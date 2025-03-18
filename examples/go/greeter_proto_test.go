package proto_test

import (
	"testing"

	"example.com/greeter_proto"
)

func TestFoo(t *testing.T) {
	msg := &greeter_proto.HelloReply{
		Message: "hello world",
	}
	if msg.Message != "hello world" {
		t.Fail()
	}
}
