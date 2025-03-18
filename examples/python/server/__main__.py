from concurrent import futures
import logging
import math
import time

import grpc
from proto import greeter_pb2

class Greeter(greeter_pb2.GreeterStub):
    def SayHello(self, request, context):
        return greeter_pb2.HelloReply(message=f'Hello {request.name}')

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    greeter_pb2.add_Greeter_to_server(Greeter(), server)
    server.add_insecure_port("[::1]:5042")
    server.start()
    server.wait_for_termination()

if __name__ == "__main__":
    logging.basicConfig()
    serve()
