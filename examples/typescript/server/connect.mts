import { ConnectRouter, HandlerContext } from "@connectrpc/connect";
import { Greeter, HelloRequest } from "../../proto/greeter_pb.js";

export default (router: ConnectRouter) =>
  router.service(Greeter, {
    async sayHello(req: HelloRequest, context: HandlerContext) {
      return {
        message: `Hello ${req.name}!`,
      };
    }
  });
