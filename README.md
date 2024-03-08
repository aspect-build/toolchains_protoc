# Bazel toolchain for pre-built protoc

protoc has always been distributed as pre-built binaries on https://github.com/protocolbuffers/protobuf/releases

Bazel 7 introduced `--incompatible_enable_proto_toolchain_resolution` to allow us fetch that binary rather than re-build it!

See https://github.com/bazelbuild/examples/blob/never_compile_protoc_again/proto/README.md

## Why a separate Bazel module?

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
<https://github.com/alexeagle/rules_protoc/releases>
