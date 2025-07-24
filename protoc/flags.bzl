PROTOC_TOOLCHAIN_FLAGS = {
    "incompatible_enable_proto_toolchain_resolution": struct(
        default = True,
        description = """\
        Bazel 7 introduced this flag to allow us fetch `protoc` rather than re-build it!
        That flag ALSO decouples how each built-in language rule (Java, Python, C++, etc.) locates the runtime.
        """,
    ),
    "per_file_copt": struct(
        default = "external/.*protobuf.*@--PROTOBUF_WAS_NOT_SUPPOSED_TO_BE_BUILT",
        description = "Make sure protobuf is not built from source",
    ),
    "host_per_file_copt": struct(
        default = "external/.*protobuf.*@--PROTOBUF_WAS_NOT_SUPPOSED_TO_BE_BUILT",
        description = "Make sure protobuf is not built from source",
    ),
    "per_file_copt": struct(
        default = "external/.*grpc.*@--GRPC_WAS_NOT_SUPPOSED_TO_BE_BUILT",
        description = "Make sure grpc is not built from source",
    ),
    "host_per_file_copt": struct(
        default = "external/.*grpc.*@--GRPC_WAS_NOT_SUPPOSED_TO_BE_BUILT",
        description = "Make sure grpc is not built from source",
    ),
}
