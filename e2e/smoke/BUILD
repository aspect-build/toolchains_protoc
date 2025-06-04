load("@rules_proto//proto:defs.bzl", "proto_library")
load("@rules_shell//shell:sh_test.bzl", "sh_test")

proto_library(
    name = "foo_proto",
    srcs = ["foo.proto"],
)

sh_test(
    name = "test",
    srcs = ["proto_descriptor_test.sh"],
    data = ["foo_proto"],
    deps = ["@bazel_tools//tools/bash/runfiles"],
)
