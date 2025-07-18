/*
============================================
Anonymous Functions and Arrow (=>) Syntax
============================================

🔹 An **anonymous function** is a function without a name.
It's useful for short, temporary logic like event handlers, callbacks, and list operations.

🔹 The **arrow syntax (=>)** is a shorthand for functions with a single expression.
It's clean, concise, and readable.
*/
void main() {
  // * Normal named function
  greet();

  // * Anonymous function assigned to a variable
  var sayHi = () {
    print('Hi there (from anonymous function)');
  };
  sayHi(); // call it

  // * Anonymous function used as an argument (List.forEach)
  List<String> names = ['Ali', 'Sami', 'Nora'];
  names.forEach((String name) {
    print('Hello $name!'); // anonymous function used here
  });

  // * Arrow function syntax for simple expressions
  int square(int x) => x * x;
  print('Square of 5: ${square(5)}');

  // * Arrow anonymous function inside forEach
  names.forEach((name) => print('Hi again $name!'));

  // * Arrow function returning a string
  String welcome(String name) => 'Welcome, $name!';
  print(welcome('Amine'));

  // * Passing function as argument (callback)
  runTask(() {
    print('Running anonymous task...');
  });

  // TODO: Create a function that takes a function as parameter and calls it
  // TODO: Ask students to use forEach with an arrow function to print numbers from 1 to 5
  // TODO: Write a list of numbers and use .map() with arrow function to return squared numbers

  // ? Can we use arrow syntax for multi-line code? (No)
  // ? What’s the difference between () {} and () => ?
  // ? When should we use anonymous functions vs named functions?
}

// ============================================
// Supporting Functions
// ============================================

// * Named function
void greet() {
  print('Hello from a named function!');
}

// * Function that accepts a callback (Function as parameter)
void runTask(Function task) {
  print('Starting task...');
  task(); // calling the passed function
  print('Task completed!');
}
