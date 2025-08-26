use tonic::{Request, Response, Status};

use greeter_proto::proto::greeter_server::Greeter;
use greeter_proto::proto::{HelloReply, HelloRequest};

#[derive(Copy, Clone)]
pub struct MyGreeter {}

impl MyGreeter {
    pub fn new() -> Self {
        Self {}
    }
}

#[tonic::async_trait]
impl Greeter for MyGreeter {
    async fn say_hello(
        &self,
        request: Request<HelloRequest>,
    ) -> Result<Response<HelloReply>, Status> {
        println!("Got a request from {:?}", request.remote_addr());

        let reply = HelloReply {
            message: format!("Hello {}, I am Rust server", request.into_inner().name),
        };
        Ok(Response::new(reply))
    }
}
