load("@rules_proto//proto:defs.bzl", "proto_lang_toolchain")

# Configure protoc to have the right arguments for generating Python stubs.
proto_lang_toolchain(
    name = "protoc_py_toolchain",
    command_line = "--python_out=%s",
    progress_message = "Generating Python proto_library %{label}",
    runtime = "@pypi//protobuf",
)

proto_lang_toolchain(
    name = "protoc_java_toolchain",
    command_line = "--java_out=%s",
    progress_message = "Generating Java proto_library %{label}",
    runtime = "@protobuf-java_3_25_3//jar",
)

# Adapters to the register_toolchains call, adding the toolchain_type to above
toolchain(
    name = "protoc_py_toolchain.registration",
    toolchain = ":protoc_py_toolchain",
    toolchain_type = "@rules_python//python/proto:toolchain_type",
)

toolchain(
    name = "protoc_java_toolchain.registration",
    toolchain = ":protoc_java_toolchain",
    toolchain_type = "@rules_java//java/proto:toolchain_type",
)
