/*
============================================
Classes in Dart
============================================

A **class** is a blueprint for creating objects. It defines the properties (fields) and behaviors (methods) of an object.

In Dart, classes are declared using the `class` keyword.

Syntax:
class ClassName {
  Fields (variables)
  Constructor
  Methods (functions)
}
*/

void main() {
  // * Create an object from a class
  Person p1 = Person(); // using default constructor
  p1.name = 'Ali';
  p1.age = 25;
  p1.sayHello();

  // * Using parameterized constructor
  Person p2 = Person.withDetails('Nora', 30);
  p2.sayHello();

  // * Access fields directly
  print('Name: ${p2.name}, Age: ${p2.age}');

  // * Class with private field and getter
  Student s1 = Student('Sami', 18);
  s1.study();
  print('Student name: ${s1.name}');
  print('Student age: ${s1.getAge()}');

  // * Class with toString override
  print(p1); // calls toString()

  // * Using class with method returning value
  Calculator calc = Calculator();
  int result = calc.add(5, 3);
  print('5 + 3 = $result');

  // * Using named constructor
  Person unknown = Person.unknown();
  unknown.sayHello();

  // TODO 1: Create a Car class with fields brand, model, and year
  //         - Add a constructor and a method displayInfo() to print car details

  // TODO 2: Create an Animal class with method speak()
  //         - Then create Dog and Cat classes that extend Animal and override speak()

  // TODO 3: Add a toString() method in the Car class and override it to return car info as string

  // TODO 4: Create a Book class with title, author, and a method read()
  //         - Ask the student to print the book title and call the read() method

  // TODO 5: Add a getter in Student to check if the student isAdult (age >= 18)

  // TODO 6: Create a BankAccount class with balance (private)
  //         - Add deposit() and withdraw() methods
  //         - Add getBalance() method

  // TODO 7: Try creating a class with default values for fields

  // ! ERROR: Trying to access private field from outside
  // print(s1._age); // Error: _age is private

  // ? What is the use of private fields?
  // ? What happens if you don't define a constructor?
  // ? How to create multiple constructors?
}

// ============================================
// Person Class Example
// ============================================

class Person {
  String name = '';
  int age = 0;

  // * Default constructor
  Person() {
    print('Person created (default constructor)');
  }

  // * Named constructor
  Person.unknown() {
    name = 'Unknown';
    age = 0;
  }

  // * Parameterized constructor
  Person.withDetails(this.name, this.age);

  void sayHello() {
    print('Hi, I am $name and I am $age years old.');
  }

  @override
  String toString() {
    return 'Person(name: $name, age: $age)';
  }
}

// ============================================
// Student Class with Private Field
// ============================================

class Student {
  String name;
  int _age; // private field

  Student(this.name, this._age);

  void study() {
    print('$name is studying...');
  }

  int getAge() {
    return _age; // using getter
  }

  // TODO: Add a getter isAdult => returns true if _age >= 18
}

// ============================================
// Calculator Class Example
// ============================================

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) => a * b;

  double divide(int a, int b) {
    if (b == 0) {
      print('Cannot divide by zero.');
      return 0;
    }
    return a / b;
  }
}

// ============================================
// Example of a class with named constructors and default values

// class Car {
//   String brand;
//   String model;
//   int year;

//   // Default constructor
//   Car(this.brand, this.model, this.year);

//   // Named constructor
//   Car.electric(String model)
//       : brand = 'Tesla',
//         model = model,
//         year = 2024;

//   // Named constructor with default values
//   Car.unknown()
//       : brand = 'Unknown',
//         model = 'Unknown',
//         year = 0;
// }

// void main() {
//   Car car1 = Car('Toyota', 'Corolla', 2020);
//   Car car2 = Car.electric('Model S');
//   Car car3 = Car.unknown();

//   print('${car1.brand} ${car1.model}');
//   print('${car2.brand} ${car2.model}');
//   print('${car3.brand} ${car3.model}');
// }
