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

// In this version, the functions bark, age_up, and print_age are defined independently from the Dog struct, so they can be used in a more procedural manner. Also, note that for age_up we're passing a pointer to dog since it modifies the dog instance. The other two functions receive a copy of dog, as they don't modify the original instance.

