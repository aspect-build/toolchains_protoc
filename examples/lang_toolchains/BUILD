load("@rules_proto//proto:defs.bzl", "proto_lang_toolchain")

# Configure protoc to have the right arguments for generating Python stubs.
proto_lang_toolchain(
    name = "protoc_py_toolchain",
    command_line = "--python_out=%s",
    progress_message = "Generating Python proto_library %{label}",
    runtime = "@pypi//protobuf",
    toolchain_type = "@rules_python//python/proto:toolchain_type",
)

proto_lang_toolchain(
    name = "protoc_java_toolchain",
    command_line = "--java_out=%s",
    progress_message = "Generating Java proto_library %{label}",
    runtime = "@protobuf-java_3_25_3//jar",
    toolchain_type = "@rules_java//java/proto:toolchain_type",
)
