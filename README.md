# zig-wasm-logger

A simple implementation of `console.log()` in Zig + JS + Wasm.

https://daneelsan.github.io/zig-wasm-logger/

![example](./example.gif)

## Usage

```zig
const JS = @import("JS.zig");

/// Print `args` formatted by `format` into Javascript's console.
JS.Console.log(format, args)
```

Example:

```zig
const JS = @import("JS.zig");

export fn step(timestamp: f32) void {
    JS.Console.log("timestamp: {}\n", .{timestamp});
}
```

## Build

```shell
$ zig build -Drelease=true
```

```shell
$ ls *.wasm
example.wasm
```

## References

* https://github.com/daneelsan/minimal-zig-wasm-canvas
* https://github.com/daneelsan/zig-wefx
* https://github.com/ziglang/zig/blob/master/lib/std/io/writer.zig
* https://github.com/hexops/mach/blob/main/src/platform/wasm.zig
* https://github.com/hexops/mach/blob/main/src/platform/mach.js