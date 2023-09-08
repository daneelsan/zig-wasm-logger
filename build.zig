const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const lib = b.addSharedLibrary(.{
        .name = "example",
        .root_source_file = .{ .path = "./example.zig" },
        .target = .{
            .cpu_arch = .wasm32,
            .os_tag = .freestanding,
        },
        .optimize = .ReleaseSmall,
    });
    lib.rdynamic = true;
    b.installArtifact(lib);
}
