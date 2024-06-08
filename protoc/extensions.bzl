"Module extensions for use under bzlmod"

load("@bazel_features//:features.bzl", "bazel_features")
load(":toolchain.bzl", "protoc_toolchains")

DEFAULT_REPOSITORY = "toolchains_protoc_hub"

def _proto_extension_impl(module_ctx):
    registrations = {}
    root_name = None
    for mod in module_ctx.modules:
        for toolchain in mod.tags.toolchain:
            if toolchain.name != DEFAULT_REPOSITORY and not mod.is_root:
                fail("""\
                Only the root module may override the default name for the toolchain.
                This prevents conflicting registrations in the global namespace of external repos.
                """)

            # Ensure the root wins in case of differences
            if mod.is_root:
                protoc_toolchains(toolchain.name, register = False, google_protobuf = toolchain.google_protobuf, version = toolchain.version)
                root_name = toolchain.name
            elif toolchain.name not in registrations.keys():
                registrations[toolchain.name] = toolchain
    for name, toolchain in registrations.items():
        if name != root_name:
            protoc_toolchains(name, register = False, google_protobuf = toolchain.google_protobuf, version = toolchain.version)

    if bazel_features.external_deps.extension_metadata_has_reproducible:
        return module_ctx.extension_metadata(reproducible = True)
    else:
        return None

protoc = module_extension(
    implementation = _proto_extension_impl,
    tag_classes = {
        "toolchain": tag_class(attrs = {
            "name": attr.string(doc = """\
                Base name for generated repositories, allowing more than one toolchain to be registered.
                Overriding the default is only permitted in the root module.
                """, default = DEFAULT_REPOSITORY),
            "google_protobuf": attr.string(doc = """A repository containing the exported 'built-in' types:
            https://protobuf.dev/reference/protobuf/google.protobuf/
            """),
            "version": attr.string(doc = "A tag of protocolbuffers/protobuf repository."),
        }),
    },
)
