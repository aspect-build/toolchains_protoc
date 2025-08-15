def _pb_version_transition_impl(settings, attr):
    is_bcr_release = True  # there's some way to detect
    if not is_bcr_release:
        # Transition is not needed
        return {}

    # Version information about the current protobuf release will be loaded
    # from a version.bzl file which protobuf releases will create with every release.

    # Here some ways to match the version
    #
    # Make an exact match
    return {
        "//version:protoc_major": "3",
        "//version:protoc_minor": "21",
        "//version:protoc_patch": "12"
    }
    #
    # Use to make a major version match
    return {
        "//version:protoc_major": "3"
    }
    #
    # Use to make a major.minor match
    return {
        "//version:protoc_major": "3",
        "//version:protoc_minor": "21"
    }


_pb_version_transition = transition(
    implementation = _pb_version_transition_impl,
    inputs = [],
    outputs = [
        "//version:protoc_major",
        "//version:protoc_minor",
        "//version:protoc_patch",
    ],
)

def _cc_proto_library_impl(ctx):
    toolchain = ctx.toolchains["//:demo_toolchain_type"]

    return DefaultInfo(files = depset([toolchain.proto.proto_compiler.executable]))

cc_proto_library = rule(
    implementation = _cc_proto_library_impl,
    toolchains = ["//:demo_toolchain_type"],
    cfg = _pb_version_transition,
)
