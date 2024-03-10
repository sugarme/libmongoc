const std = @import("std");

pub fn build(b: *std.Build) !void {
    _ = b.addModule("libmongoc.library", .{ .source_file = .{ .path = b.pathFromRoot("lib") } });
    _ = b.addModule("libmongoc.include", .{ .source_file = .{ .path = b.pathFromRoot("include") } });
    _ = b.addModule("libmongoc.h", .{ .source_file = .{ .path = b.pathFromRoot("includde/mongoc.h") } });
    _ = b.addModule("libbson.h", .{ .source_file = .{ .path = b.pathFromRoot("includde/bson.h") } });
    _ = b.addModule("libmongoc.so", .{ .source_file = .{ .path = b.pathFromRoot("lib/libmongoc-1.0.so") } });
    _ = b.addModule("libbson.so", .{ .source_file = .{ .path = b.pathFromRoot("lib/libbson-1.0.so") } });
}
