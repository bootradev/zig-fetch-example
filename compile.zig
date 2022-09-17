// this file is an example of what a build file using zig-fetch might look like
// make sure the parent import directory matches what is passed into fetchAndBuild

const std = @import("std");
const apple_pie = @import("zig-deps/apple_pie/src/apple_pie.zig");

pub fn build(_: *std.build.Builder) !void {
    std.log.info("successfully imported {}!", .{apple_pie});
}
