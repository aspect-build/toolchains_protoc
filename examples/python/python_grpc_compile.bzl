"""
Generated definition of python_grpc_compile.
Modified from https://github.com/rules-proto-grpc/rules_proto_grpc/blob/d17b5b16c8b12143c6f1b78dabd6bbc228e89b58/modules/python/python_grpc_compile.bzl
"""

load(
    "@rules_proto_grpc//:defs.bzl",
    "ProtoPluginInfo",
    "proto_compile_attrs",
    "proto_compile_impl",
    "proto_compile_toolchains",
)

# Create compile rule
python_grpc_compile = rule(
    implementation = proto_compile_impl,
    attrs = dict(
        proto_compile_attrs,
        _plugins = attr.label_list(
            providers = [ProtoPluginInfo],
            default = [
                Label("//tools/toolchains:proto_plugin"),
                Label("//tools/toolchains:grpc_plugin"),
            ],
            cfg = "exec",
            doc = "List of protoc plugins to apply",
        ),
    ),
    toolchains = proto_compile_toolchains,
)
