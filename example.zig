const JS = @import("JS.zig");

export fn step(timestamp: f32) void {
    JS.Console.log("timestamp: {}\n", .{timestamp});
}
