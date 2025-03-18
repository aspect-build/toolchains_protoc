import sys
import unittest

from proto import greeter_pb2

class TestCase(unittest.TestCase):
    def test_message(self):
        got = greeter_pb2.HelloReply(
            message = "hello world",
        )
        self.assertIsNotNone(got)


if __name__ == "__main__":
  sys.exit(unittest.main())
