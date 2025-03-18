use greeter_proto::proto::greeter_client::GreeterClient;
use greeter_proto::proto::HelloRequest;
use greeter_proto::any_proto::google::protobuf::Any;

// https://github.com/hyperium/tonic/blob/master/examples/src/helloworld/client.rs
#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = GreeterClient::connect("http://[::1]:5042")
        .await
        .expect("[Client]: Failed to connect to server.");

    let detail = Any {
        type_url: "type.googleapis.com/mypackage.MyMessage".to_string(),
        value: b"details".to_vec(),
    };
    let request = tonic::Request::new(HelloRequest {
        name: "Rust Client".into(),
        details: vec![detail],
    });

    let response = client
        .say_hello(request)
        .await
        .expect("[Client]: Failed to get a response from the server");

    println!("RESPONSE={:?}", response);

    Ok(())
}
