"Module extensions for use under bzlmod"

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
                protoc_toolchains(toolchain.name, register = False, version = toolchain.version)
                root_name = toolchain.name
            else:
                registrations[toolchain.name] = toolchain.version
    for name, version in registrations.items():
        if name != root_name:
            protoc_toolchains(name, register = False, version = version)

protoc = module_extension(
    implementation = _proto_extension_impl,
    tag_classes = {
        "toolchain": tag_class(attrs = {
            "name": attr.string(doc = """\
                Base name for generated repositories, allowing more than one toolchain to be registered.
                Overriding the default is only permitted in the root module.
                """, default = DEFAULT_REPOSITORY),
            "version": attr.string(doc = "A tag of protocolbuffers/protobuf repository."),
        }),
    },
)
