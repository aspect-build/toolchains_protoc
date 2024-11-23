"""Unit test suite for version-to-artifact-name resolution helper.

Based on the example at https://bazel.build/rules/testing#testing-starlark-utilities
"""

load("@bazel_skylib//lib:unittest.bzl", "asserts", "unittest")
load(":prebuilt_protoc_toolchain.bzl", "release_version_to_artifact_name")
load(":versions.bzl", "PROTOC_VERSIONS")

def _release_version_to_artifact_name_test_impl(ctx):
  env = unittest.begin(ctx)
  count = 0

  for release_version in PROTOC_VERSIONS:
      artifact_name = release_version_to_artifact_name(release_version, "linux-x86_64")
      artifact_dict = PROTOC_VERSIONS[release_version]
      # there should be a linux-x86_64 artifact in every release
      asserts.true(env, artifact_name in artifact_dict, "'{}' not found for release version '{}'".format(artifact_name, release_version))
      count += 1

  asserts.true(env, count > 0, "no versions tested")
  return unittest.end(env)

release_version_to_artifact_name_test = unittest.make(_release_version_to_artifact_name_test_impl)

def release_version_to_artifact_name_test_suite():
  unittest.suite(
    "release_version_to_artifact_name_tests",
    release_version_to_artifact_name_test,
  )
