const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .wasm32,
        .os_tag = .freestanding,
    });
    const exe = b.addExecutable(.{
        .name = "example",
        .root_source_file = b.path("./example.zig"),
        .target = target,
        .optimize = .ReleaseSmall,
    });
    exe.entry = .disabled;
    exe.rdynamic = true;
    b.installArtifact(exe);
}
