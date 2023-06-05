const std = @import("std");

const Dog = struct {
    name: []const u8,
    age: u8,

    const Self = @This();

    fn bark(self: *Self) void {
        std.debug.print("{s} says: Woof!\n", .{self.name});
    }

    fn age_up(self: *Self) void {
        self.age += 1;
    }

    fn print_age(self: *Self) void {
        std.debug.print("{s} is {d} years old.\n", .{self.name, self.age});
    }
};

pub fn main() void {
    var dog = Dog{
        .name = "Rex",
        .age = 5,
    };

dog.print_age();
    dog.bark();  // Prints: "Rex says: Woof!"
    dog.age_up();  // Increments Rex's age by 1
    dog.print_age();  // Prints: "Rex is 6 years old."
}
