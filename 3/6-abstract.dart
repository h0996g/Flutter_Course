/*
==================================================
📘 Dart Abstract Classes
==================================================

🔹 What is an Abstract Class?
An abstract class is a **blueprint** that cannot be directly used to create objects. It is meant to be **extended** by other classes that **implement or override** its methods.

✅ You use abstract classes to:
- Define shared structure
- Force subclasses to implement specific behaviors
- Make your code clean and reusable

==================================================
🔸 1. Abstract Class Example
*/

abstract class Animal {
  void makeSound(); // abstract method: no body

  void sleep() {
    print("Animal sleeps");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows");
  }
}

void main1() {
  Dog dog = Dog();
  dog.makeSound(); // Dog barks
  dog.sleep(); // Animal sleeps

  Cat cat = Cat();
  cat.makeSound(); // Cat meows
  cat.sleep(); // Animal sleeps

  // Animal a = Animal(); ❌ Error: Cannot instantiate abstract class
}

/*
==================================================
🔸 2. Abstract Class with Constructor and Properties
*/

abstract class Vehicle {
  String model;

  Vehicle(this.model);

  void start(); // abstract
}

class Car extends Vehicle {
  Car(String model) : super(model);

  @override
  void start() {
    print("$model is starting...");
  }
}

void main2() {
  Car myCar = Car("Toyota");
  myCar.start(); // Toyota is starting...
}

/*
==================================================
⚠️ Common Mistakes:
- Trying to create an object from an abstract class (it’s not allowed)
- Forgetting to override abstract methods in child class
- Adding a body to abstract methods (they must be empty!)

==================================================
📝 Exercises:
1. Create an abstract class `Shape` with method `area()` and `describe()`.
2. Create two subclasses: `Circle` and `Rectangle`, and implement `area()`.
3. Add a `name` property in the abstract class and print it from both subclasses.
4. Add a class `User` with `login()` as abstract, and two subclasses: `AdminUser` and `GuestUser`.

💡 Tip: Abstract classes are very useful in **real-world apps** where you have common rules but different implementations (e.g. different payment methods, users, vehicles).
*/
