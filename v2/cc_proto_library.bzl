def _pb_version_transition_impl(settings, attr):
    is_bcr_release = False  # there's some way to detect
    if is_bcr_release:
        # This will loaded from a version.bzl file which
        # protobuf releases will create with every release.
        return {
            "//version:protoc": "3.21.12",
        }

    # Transition is not needed
    return {}

_pb_version_transition = transition(
    implementation = _pb_version_transition_impl,
    inputs = [],
    outputs = ["//version:protoc"],
)

def _cc_proto_library_impl(ctx):
    toolchain = ctx.toolchains["//:demo_toolchain_type"].proto

    print(toolchain)

    return DefaultInfo(files = depset([toolchain.proto_compiler.executable]))

cc_proto_library = rule(
    implementation = _cc_proto_library_impl,
    toolchains = ["//:demo_toolchain_type"],
    cfg = _pb_version_transition,
)
