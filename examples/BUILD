load("@rules_proto//proto:defs.bzl", "proto_library")
load("@rules_python//python:proto.bzl", "py_proto_library")
load("@rules_go//proto:def.bzl", "go_proto_library")

package(default_visibility = ["//visibility:public"])

proto_library(
    name = "foo_proto",
    srcs = ["foo.proto"],
    deps = ["@com_google_protobuf//:any_proto"],
)

py_proto_library(
    name = "foo_py_proto",
    deps = [":foo_proto"],
)

java_proto_library(
    name = "foo_java_proto",
    deps = [":foo_proto"],
)

go_proto_library(
    name = "foo_go_proto",
    importpath = "example.com/foo_proto",
    proto = ":foo_proto",
)
