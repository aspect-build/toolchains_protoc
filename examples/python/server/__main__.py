from concurrent import futures
import logging

import grpc
from proto import greeter_pb2
from proto.greeter_pb2_grpc import GreeterServicer, add_GreeterServicer_to_server

class Greeter(GreeterServicer):
    def SayHello(self, request, context):
        return greeter_pb2.HelloReply(message=f'Hello {request.name}, I am Python server')

def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    add_GreeterServicer_to_server(Greeter(), server)
    server.add_insecure_port("[::1]:5042")
    server.start()
    server.wait_for_termination()

if __name__ == "__main__":
    logging.basicConfig()
    serve()
