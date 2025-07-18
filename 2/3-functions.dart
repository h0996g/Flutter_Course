/*
============================================
Functions and Return Types in Dart
============================================

A **function** is a block of code that performs a specific task.
It can accept parameters (inputs) and optionally return a value.

The general syntax:
returnType functionName(parameters) {
  // body
  return value; // optional
}
*/

void main() {
  // * Calling a function that returns nothing (void)
  greetUser();

  // * Calling a function that returns an int
  int age = calculateAge(2000);
  print('You are $age years old.');

  // * Calling a function with multiple parameters
  int sum = add(10, 20);
  print('Sum: $sum');

  // * Using a double return type
  double area = calculateCircleArea(5.5);
  print('Circle area: $area');

  // * Function with String return type
  String greeting = buildGreeting('Ali');
  print(greeting);

  // * Arrow function (short form)
  print('Arrow sum: ${arrowAdd(4, 6)}');

  // TODO: write a function that returns a String with their name and age
  // TODO: create a function that returns true if a number is even
  // TODO: create a function that returns a grade (A/B/C) based on score

  // ! ERROR: Passing wrong type to greetUser (uncomment to see the error)
  // greetUser(123); // Error: No argument expected

  // ! ERROR: Missing return in non-void function
  // int badFunction() {
  //   // return is missing
  // }

  // ? What happens if we return the wrong type?
  // String test = calculateAge(2001); // Error: int can't be assigned to String
}

// ============================================
// Function Definitions
// ============================================

// * Function that returns nothing (void)
void greetUser() {
  print('Hello, welcome to the Dart class!');
}

// * Function that returns an int
int calculateAge(int birthYear) {
  int currentYear = 2024;
  return currentYear - birthYear;
}

// * Function with parameters and return value
int add(int a, int b) {
  return a + b;
}

// * Function that returns a double
double calculateCircleArea(double radius) {
  return 3.14 * radius * radius;
}

// * Function that returns a string
String buildGreeting(String name) {
  return 'Hello, $name!';
}

// * Arrow function (one-line short syntax)
int arrowAdd(int x, int y) => x + y;


// ({required a, required b ,required c }) and ({ a ,b,c}) and (a,b,{c})