import logging

import grpc
from proto import greeter_pb2
from proto.greeter_pb2_grpc import GreeterStub
from google.protobuf.any_pb2 import Any


def run():
    # Create a channel to connect to the server
    with grpc.insecure_channel('[::1]:5042') as channel:
        # Create a stub (client)
        stub = GreeterStub(channel)

        # Create a detail message using Any
        detail = Any()
        detail.type_url = "type.googleapis.com/mypackage.MyMessage"
        detail.value = b"details"

        # Create the request
        request = greeter_pb2.HelloRequest(
            name="Python Client",
            details=[detail]
        )

        # Make the call
        try:
            response = stub.SayHello(request)
            print(f"Response: {response.message}")
        except grpc.RpcError as e:
            print(f"RPC failed: {e}")


if __name__ == "__main__":
    logging.basicConfig()
    run()