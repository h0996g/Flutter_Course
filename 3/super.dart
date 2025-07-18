/*
==================================================
📘 Dart `super` Keyword 
==================================================

🔹 What is `super`?
The `super` keyword is used to refer to the parent class:
- To call a parent class **constructor**
- To access a parent class **method** or **property**

This is helpful when you’re working with **inheritance**.

==================================================
🔸 1. Using `super` to Call Parent Constructor
*/

class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  // Use super to call Animal constructor
  Dog(String name, this.breed) : super(name);

  void describe() {
    print("This is $name and it’s a $breed.");
  }
}

void main() {
  Dog myDog = Dog("Rex", "Labrador");
  myDog.describe(); // This is Rex and it’s a Labrador.
}

/*
==================================================
🔸 2. Using `super` to Call Parent Method
*/

class Parent {
  void sayHello() {
    print("Hello from Parent");
  }
}

class Child extends Parent {
  @override
  void sayHello() {
    super.sayHello(); // Call method from Parent
    print("Hello from Child");
  }
}

void main2() {
  Child child = Child();
  child.sayHello();
  // Output:
  // Hello from Parent
  // Hello from Child
}

/*
==================================================
🔸 3. Using `super` for Parent Properties
*/

class Person {
  String name = "Unknown";
}

class Student extends Person {
  void showName() {
    print("Student name is ${super.name}"); // Access parent's variable
  }
}

void main3() {
  Student s = Student();
  s.name = "Ahmed";
  s.showName(); // Student name is Ahmed
}

/*
==================================================
⚠️ Common Mistakes:
- Forgetting to use `super` in the child constructor when the parent has required fields.
- Trying to call super.property when it doesn't exist in the parent.
- Overriding a method without calling `super` (if you still want base behavior).

==================================================
📝 Exercises:
1. Create a class `Shape` with a method `draw()`, and a class `Circle` that extends it. Call `super.draw()` from Circle.
2. Create a class `Device` with a `brand`, then extend it in a class `Phone` and call `super(brand)` in constructor.
3. Create a class `Teacher` with method `introduce()`, and override it in `MathTeacher` using `super.introduce()` + more.

*/
