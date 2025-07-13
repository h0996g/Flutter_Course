/*
============================================
Data Type: int
============================================

An `int` is used to store whole numbers (positive, negative, or zero).
It does not support decimal points.

Example int values: 0, 1, -5, 100, 2024
*/

void main() {
  // * Declare an int variable and print it
  int age = 25;
  print('Age: $age');

  // * Perform arithmetic using int
  int year = 2024;
  int birthYear = 2000;
  int result = year - birthYear;
  print('You are $result years old.');

  // * Add, subtract, multiply, divide
  print('5 + 2 = ${5 + 2}');
  print('6 * 3 = ${6 * 3}');
  print('10 - 4 = ${10 - 4}');
  print('20 ~/ 3 = ${20 ~/ 3}'); // ~/ is integer division

  // * Using int.parse() to convert a String to int
  String input = '42';
  int number = int.parse(input);
  print('Parsed number: $number');

  // * Combine input parsing with math
  String inputYear = '1999';
  int parsedYear = int.parse(inputYear);
  print('Age if born in $parsedYear: ${2024 - parsedYear}');

  // TODO: Create a string variable with a number (e.g. '150'), use int.parse to convert and print it
  // TODO: Ask the student to add two parsed integers from strings
  // TODO: Try parsing 'abc' and catch the error using try-catch

  // ! ERROR: Trying to parse a non-numeric string will cause runtime error
  // int error = int.parse('abc'); // FormatException

  // * You can handle parsing safely using try-catch
  try {
    int value = int.parse('abc');
    print('Parsed: $value');
  } catch (e) {
    print('Cannot parse value: $e');
  }

  // ! ERROR: Assigning a decimal directly to int
  // int wrongValue = 12.5;

  // ! ERROR: Mixing String with int directly
  // print('Score: ' + 100); // Type error

  // * Correct usage: convert to string or use interpolation
  print('Score: ' + 100.toString());
  print('Score: $age');

  // ? What happens if you divide by 0? Try it and observe the error
  // int zeroDiv = 10 ~/ 0; // Runtime exception (IntegerDivisionByZeroException)
}
