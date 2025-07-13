/*
============================================
Data Type: String
============================================

A String is used to store text, such as names, messages, and sentences.
Strings are written between single quotes (' ') or double quotes (" ").

Examples: 'Hello', "Dart", '123'
*/

void main() {
  // * Declare a string variable
  String name = 'houssam';
  print('Name: $name');

  // * String concatenation using +
  String greeting = 'Hello, ' + name + '!';
  print(greeting);

  // * String interpolation using $
  print('Hello again, $name!');

  // * Use string methods
  String message = 'Dart is Fun';

  print(message.toUpperCase()); // DART IS FUN
  print(message.toLowerCase()); // dart is fun
  print('Length: ${message.length}'); // 12
  print('Substring: ${message.substring(0, 4)}'); // Dart

  // * String with escape characters
  print('It\'s a great day!');
  print("He said: \"Flutter is awesome!\"");

  // * String + int (must convert int to string)
  int age = 22;
  print('Age: ' + age.toString());
  print('Age: $age'); // Preferred

  // TODO: Create a string variable for your favorite color and print it
  // TODO: Combine first name and last name using +
  // TODO: Use substring to extract the first 3 letters of your name
  // TODO: Try to print a string with both single and double quotes

  // ! ERROR: Mixing String and int directly using +
  // print('My score is: ' + 100); // Type error

  // ! ERROR: Unescaped quote inside string
  // print('This is "wrong); // Error: unterminated string

  // * Correct way to handle quotes
  print("This is 'valid'");
  print('He said: "Nice!"');

  // ? Can you guess the output of: print('Hello'.length); ?
  print('Hello'.length); // 5
}
