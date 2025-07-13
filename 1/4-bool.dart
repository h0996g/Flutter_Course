/*
============================================
Data Type: bool
============================================

A `bool` is a boolean value: it can only be either `true` or `false`.

Booleans are used in conditions, comparisons, decisions, and logic.

Examples: true, false
*/

void main() {
  // * Declare bool variables
  bool isLoggedIn = true;
  bool isAdmin = false;

  print('Logged in: $isLoggedIn');
  print('Is admin: $isAdmin');

  // * Use bool in if conditions
  if (isLoggedIn) {
    print('Welcome, user!');
  }

  if (!isAdmin) {
    print('You do not have admin access.');
  }

  // * Use comparison operators (>, <, ==, !=)
  int score = 75;
  bool passed = score >= 60;
  print('Did the student pass? $passed');

  // * Combine boolean expressions with && and ||
  int age = 18;
  bool hasID = true;
  bool canEnter = age >= 18 && hasID;
  print('Can enter: $canEnter');

  // TODO: Create a bool variable isStudent and print a message based on its value
  // TODO: Check if a number is even using % operator and print true/false
  // TODO: Use && and || in your own condition

  // ! ERROR: Assigning a string instead of true/false
  // bool isReady = 'yes'; //  Error

  // ! ERROR: Forgetting comparison operator (e.g., score = 50 > 40 instead of score > 40)
  // if (score = 50 > 40) {} //  Invalid assignment

  // * Correct use of logic
  bool hasPermission = true;
  if (hasPermission && isLoggedIn) {
    print('Access granted.');
  }

  // ? What happens if both conditions are false?
  bool condition = false;
  print('Result: $condition'); // false
}
