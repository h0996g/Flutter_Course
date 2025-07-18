/*
==================================================
📘 Dart Inheritance
==================================================

🔹 What is Inheritance?
Inheritance is when one class (called the child class) takes features (properties and methods) from another class (called the parent class).

It allows us to reuse code, avoid repetition, and build relationships between classes.

Example: A `Dog` is an `Animal`. So Dog can inherit things from Animal.

==================================================
🔸 Parent Class Example
*/

class Animal {
  String name;

  Animal(this.name);

  void speak() {
    print("$name makes a sound.");
  }
}

/*
==================================================
🔸 Child Class Using `extends`
We use `extends` keyword to say one class inherits another.
*/

class Dog extends Animal {
  Dog(String name) : super(name); // Call parent constructor

  void bark() {
    print("$name says Woof!");
  }
}

/*
==================================================
🔸 How to Use Inheritance
*/

void main() {
  Dog myDog = Dog("Rocky");

  myDog.speak(); // Inherited from Animal
  myDog.bark(); // Specific to Dog
}

/*
==================================================
🧠 Think Like This:
- `Animal` is a general class (like a recipe).
- `Dog` is more specific and uses that recipe.
- You don’t need to rewrite `speak()` — you inherit it!

==================================================
⚠️ Common Mistakes:
- Forgetting to call the parent constructor using `super(...)`.
- Trying to use a parent method in a child class before inheritance.
- Repeating the same properties in both classes unnecessarily.

==================================================
📝 Exercises:
1. Create a class `Vehicle` with a method `move()`, then a child class `Car` that inherits it and adds `drive()` (main ).

*/
