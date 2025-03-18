import { createClient } from "@connectrpc/connect";
import { createGrpcTransport } from "@connectrpc/connect-node";
import {Greeter} from "../../proto/greeter_pb.js";

const transport = createGrpcTransport({
  baseUrl: "http://localhost:5042",
});

async function main() {
  const client = createClient(Greeter, transport);
  const res = await client.sayHello({
    name: "TypeScript Client",
  });
  console.log((res as /*todo*/any).message);
}
void main();
