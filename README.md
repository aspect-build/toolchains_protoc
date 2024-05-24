# Bazel toolchain for pre-built protoc

_#NeverCompileProtocAgain_

Using Protocol Buffers with Bazel has always been difficult.

- Compiling protoc from source requires a functional C++ toolchain, which is a burden for projects that have no C++ code.
  Also, Bazel does not ship with a hermetic toolchain, so you may have a handful of developers whose Bazel build is broken.
- Nearly every Bazel user has waited for `protoc` to compile from sources many, MANY times.
  This universally slows down builds, especially due to issues like https://github.com/bazelbuild/bazel/issues/7095 where it is observed to be easily cache-busted.
- The protobuf Bazel module is quite complex and maintenance and support from the protobuf team has been inconsistent.
  By using pre-built artifacts, Bazel users can follow the same well-tested as users of other build systems.
- Relying on the protobuf runtime for each language from the `@com_google_protobuf` repo forces you to use
  the same version of the runtime for all languages in a monorepo, and matching protoc.
  This makes it difficult to migrate to a monorepo, allowing some applications to move from their separate repo without
  changing their dependency versions.

## Support matrix

Minimum versions:

- Bazel: 7.0.0
- rules_proto: 6.0.0

| Language | Support | Example or Issue             |
| -------- | ------- | ---------------------------- |
| Java     | Yes     | [example](./examples/java)   |
| Python   | Yes     | [example](./examples/python) |
| Go       | Yes     | [example](./examples/go)     |

For all other languages, see https://github.com/bazelbuild/rules_proto/discussions/213

## Installation

Fetch this module using instructions from the release you wish to use:
<https://github.com/aspect-build/toolchains_protoc/releases>

Enable the toolchain support by adding this to `.bazelrc`:

```
# Introduced in Bazel 7.
common --incompatible_enable_proto_toolchain_resolution
```

### For each language, follow these steps

Since the user installs the proto runtimes through their existing package manager setup,
the toolchain registration happens in your repository as well.

First, fetch the official protobuf runtime that Google publishes to package registries,
using whatever Bazel rule you chose for interacting with package managers
(e.g. `maven_install` or `pip.parse`):

- Python: https://pypi.org/project/protobuf
- Java: https://mvnrepository.com/artifact/com.google.protobuf/protobuf-java
- JavaScript: https://www.npmjs.com/package/protobufjs
- Go: https://pkg.go.dev/google.golang.org/protobuf/runtime

For rulesets that need a "lang toolchain", declare one in a `BUILD` file.
It looks like the following (where `LANG`, `--flag_to_protoc`, and `runtime` are replaced
with appropriate values for the language and the label of the runtime you installed).

You can choose a Bazel package where this goes; we recommend `/tools/toolchains/BUILD.bazel`.

```starlark
load("@rules_proto//proto:defs.bzl", "proto_lang_toolchain")

proto_lang_toolchain(
    name = "protoc_LANG_toolchain",
    command_line = "--flag_to_protoc=%s",
    progress_message = "Generating LANG proto_library %{label}",
    runtime = "@some-external//lib",
    # This target should be declared by the language rules:
    toolchain_type = "@rules_LANG//path/to/proto:toolchain_type",
)
```

Then register the toolchains, either in `MODULE.bazel` or `WORKSPACE`:

```starlark
register_toolchains("//tools/toolchains:all")
```

See `examples` for several language rules like `py_proto_library` and `java_proto_library`.

### Troubleshooting

What if you still see that protoc is compiling? This means that there is still a transitive dependency on the
`com_google_protobuf` module, likely from some macro call in your `WORKSPACE` file.

> TODO: explain how to track down where the `com_google_protobuf` dependency is coming from.

> TODO: populate a list here of known issues in other Bazel modules.

## Design

### How it works

1. `protoc` has always been distributed as pre-built binaries on https://github.com/protocolbuffers/protobuf/releases
1. That distribution includes the "well known types" such as `timestamp.proto`
1. The protobuf runtimes for each language are distributed to the appropriate package manager such as npm or PyPI.
1. Bazel 7 introduced `--incompatible_enable_proto_toolchain_resolution` to allow us fetch `protoc` rather than re-build it!
   That flag ALSO decouples how each built-in language rule (Java, Python, C++, etc.) locates the runtime.

Thanks to that flag, this repo simply contains a toolchain that resolves those pre-built binaries.
In the user's repository, there's a small BUILD file where the toolchain is configured.

### Questioning why Bazel is different

Protobuf works fine under many build tools, using the releases and runtime libraries shipped by the protobuf team.
Why is Bazel different?

Our answer is: it should not be. The protobuf team shouldn’t have to own Bazel rules or understand bzlmod.
As with many other tools such as Swagger and GraphQL, the Bazel community is self-sufficient to create thin layers to establish a toolchain and execute actions that perform codegen steps.

This toolchain shows that there's no need to treat Bazel as a “special” build system vs. all the others that protobuf users rely on.
https://protobuf.dev/reference/ is sufficient documentation for everyone.
