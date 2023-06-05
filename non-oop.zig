const std = @import("std");

const Dog = struct {
    name: []const u8,
    age: u8,
};

fn bark(dog: Dog) void {
    std.debug.print("{s} says: Woof!\n", .{dog.name});
}

fn age_up(dog: *Dog) void {
    dog.age += 1;
}

fn print_age(dog: Dog) void {
    std.debug.print("{s} is {d} years old.\n", .{dog.name, dog.age});
}

pub fn main() void {
    var dog = Dog{
        .name = "Rex",
        .age = 5,
    };

    bark(dog);  // Prints: "Rex says: Woof!"
    age_up(&dog);  // Increments Rex's age by 1
    print_age(dog);  // Prints: "Rex is 6 years old."
}
