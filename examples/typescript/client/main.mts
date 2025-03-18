import { createClient , CallOptions} from "@connectrpc/connect";
import { createGrpcTransport } from "@connectrpc/connect-node";
import {Greeter} from "../../proto/greeter_pb.js";

const transport = createGrpcTransport({
  baseUrl: "http://localhost:5042",
});

async function main() {
  const client = createClient(Greeter, transport);
  const res = await client.sayHello({
    name: "TypeScript Client",
  }, {onHeader: (headers) => {
    console.log("Headers:")
    for (const [name, value] of headers) {
      console.log(`${name}: ${value}`);
    }
  }});
  console.log((res as /*todo*/any).message);
}
void main();
