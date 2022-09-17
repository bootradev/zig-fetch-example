// this file is an example of what a build.zig file using zig-fetch might look like

const fetch = @import("zig-fetch/fetch.zig");
const std = @import("std");

const deps = [_]fetch.Dependency{
    .{
        .name = "apple_pie",
        .vcs = .{
            .git = .{
                .url = "https://github.com/Luukdegram/apple_pie",
                .commit = "a4d5259dfdfcb73ad4dc6330135af86af8d82cd6",
            },
        },
    },
};

pub fn build(builder: *std.build.Builder) !void {
    try fetch.fetchAndBuild(builder, "zig-deps", &deps, "compile.zig");
}
