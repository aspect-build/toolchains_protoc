def _pb_version_transition_impl(settings, attr):
    if attr.version:
        return {
            "//version:protoc": attr.version,
        }
    return {}

_pb_version_transition = transition(
    implementation = _pb_version_transition_impl,
    inputs = [],
    outputs = ["//version:protoc"],
)


def _cc_proto_library_impl(ctx):
    toolchain = ctx.toolchains["//:cc_toolchain_type"].proto;

    print(toolchain)

    return DefaultInfo(files = depset([toolchain.proto_compiler.executable]))


cc_proto_library = rule(
    implementation = _cc_proto_library_impl,
    attrs = {
        # This will loaded from a version.bzl file which
        # protobuf releases will create with every release.
        #
        # TODO: should users be allowed to change this value?
        "version": attr.string(default = "3.21.12")
    },
    toolchains = ["//:cc_toolchain_type"],
    cfg = _pb_version_transition
)
