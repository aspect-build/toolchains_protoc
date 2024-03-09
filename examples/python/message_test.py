import sys
import unittest

from examples import foo_pb2

class TestCase(unittest.TestCase):
    def test_message(self):
        got = foo_pb2.Foo(
            msg = "hello world",
        )
        self.assertIsNotNone(got)


if __name__ == "__main__":
  sys.exit(unittest.main())
