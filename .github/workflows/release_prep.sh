#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
TAG=${GITHUB_REF_NAME}
# The prefix is chosen to match what GitHub generates for source archives
# This guarantees that users can easily switch from a released artifact to a source archive
# with minimal differences in their code (e.g. strip_prefix remains the same)
PREFIX="toolchains_protoc-${TAG:1}"
ARCHIVE="toolchains_protoc-$TAG.tar.gz"

# NB: configuration for 'git archive' is in /.gitattributes
git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE
SHA=$(shasum -a 256 $ARCHIVE | awk '{print $1}')

cat << EOF
## Using Bzlmod with Bazel 6 or later

1. (Bazel 6 only) Enable with \`common --enable_bzlmod\` in \`.bazelrc\`.
2. Add to your \`MODULE.bazel\` file:

\`\`\`starlark
# NB: this must come BEFORE bazel_dep(name = "protobuf") because they register the from-source toolchain,
# and the first registration wins.
bazel_dep(name = "toolchains_protoc", version = "${TAG:1}")

# Optional: choose a version of protoc rather than the latest.
protoc = use_extension("@toolchains_protoc//protoc:extensions.bzl", "protoc")
protoc.toolchain(
    # Pin to any version of protoc
    version = "v26.0",
)
\`\`\`

## Using WORKSPACE

Paste this snippet into your \`WORKSPACE.bazel\` file:

\`\`\`starlark
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "toolchains_protoc",
    sha256 = "${SHA}",
    strip_prefix = "${PREFIX}",
    url = "https://github.com/aspect-build/toolchains_protoc/releases/download/${TAG}/${ARCHIVE}",
)
EOF

awk 'f;/--SNIP--/{f=1}' e2e/smoke/WORKSPACE.bazel
echo "\`\`\`" 
