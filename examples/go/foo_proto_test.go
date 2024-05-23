package proto_test

import (
	"testing"

	"example.com/foo_proto"
)

func TestFoo(t *testing.T) {
	msg := &foo_proto.Foo{
		Msg: "hello world",
	}
	if msg.Msg != "hello world" {
		t.Fail()
	}
}
