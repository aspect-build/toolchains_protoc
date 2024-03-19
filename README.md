# Bazel toolchain for pre-built protoc

_#NeverCompileProtocAgain_

Using Protocol Buffers with Bazel has always been difficult.

- Nearly every Bazel user has waited for `protoc` to compile from sources many, MANY times.
  This universally slows down builds, especially due to issues like https://github.com/bazelbuild/bazel/issues/7095 where it is observed to be easily cache-busted.
- The versioning of the protobuf module on Bazel Central Registry has fallen behind and contains many patches.
  As of mid-March 2024 there are [7 patches](https://github.com/bazelbuild/bazel-central-registry/tree/main/modules/protobuf/23.1/patches)
  which essentially constitute a fork of the protobuf repo specifically for publishing to BCR.
- Relying on the protobuf runtime for each language from the `@com_google_protobuf` repo forces you to use
  the same version of the runtime for all languages in a monorepo, and matching protoc.

The key observations:

- `protoc` has always been distributed as pre-built binaries on https://github.com/protocolbuffers/protobuf/releases
- That distribution includes the "well known types" such as `timestamp.proto`
- The protobuf runtimes for each language are distributed to the appropriate package manager.

Bazel 7 introduced `--incompatible_enable_proto_toolchain_resolution` to allow us fetch `protoc` rather than re-build it!
That flag ALSO decouples how each language rule locates the runtime.
Thanks to that flag, this repo simply contains a toolchain that resolves those pre-built binaries.

See `examples` for several language rules like `py_proto_library` and `java_proto_library`.
There is NO dependency on `@com_google_protobuf` anywhere.

## Design

### Questioning why Bazel is different

Protobuf works fine under many build tools, using the releases and runtime libraries shipped by the protobuf team.
Why is Bazel different?

Our answer is: it should not be. The protobuf team shouldn’t have to own Bazel rules or understand bzlmod.
As with many other tools such as Swagger and GraphQL, the Bazel community is self-sufficient to create thin layers to establish a toolchain and execute actions that perform codegen steps.

This toolchain shows that there's no need to treat Bazel as a “special” build system vs. all the others that protobuf users rely on.
https://protobuf.dev/reference/ is sufficient documentation for everyone.

### Why a separate Bazel module?

This belongs in rules_proto, see

- https://github.com/bazelbuild/rules_proto/pull/205
- https://github.com/bazelbuild/rules_proto/pull/206

Getting reviews from Googlers is hard so let's not wait for them.

## Installation

Make sure your `.bazelrc` contains

```
# Introduced in Bazel 7.
common --incompatible_enable_proto_toolchain_resolution
```

Follow instructions from the release you wish to use:
<https://github.com/alexeagle/toolchains_protoc/releases>
