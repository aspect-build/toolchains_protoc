# No compiling protoc!

```
time bazel --output_base=$(mktemp -d) build :all
Starting local Bazel server and connecting to it...
INFO: Analyzed target //:foo_proto (38 packages loaded, 164 targets configured).
INFO: Found 1 target...
Target //:foo_proto up-to-date:
  bazel-bin/foo_proto-descriptor-set.proto.bin
INFO: Elapsed time: 1.761s, Critical Path: 0.02s
INFO: 2 processes: 1 internal, 1 linux-sandbox.
INFO: Build completed successfully, 2 total actions

real    0m2.148s
user    0m0.033s
sys     0m0.005s
```
