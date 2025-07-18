/*
============================================
📘 Dart Conditions (Control Flow)
============================================

Conditions allow us to execute certain blocks of code **based on specific logic or rules**.

There are two main types:
1. if / else if / else
2. switch / case
*/

void main() {
  /*
  ============================================
  🔶 1️⃣ if / else if / else
  ============================================
  */

  int age = 20;

  if (age < 13) {
    print('You are a child.');
  } else if (age < 18) {
    print('You are a teenager.');
  } else {
    print('You are an adult.');
  }

  // ✅ Works with any condition that results in true or false
  bool isLoggedIn = true;

  if (isLoggedIn) {
    print('Welcome back!');
    // ignore: dead_code
  } else {
    print('Please log in.');
  }

  /*
  ============================================
  🔶 2️⃣ switch / case
  ============================================

  Best used when checking for **specific known values**.
  */

  String grade = 'B';

  switch (grade) {
    case 'A':
      print('Excellent!');
      break;
    case 'B':
      print('Good Job!');
      break;
    case 'C':
      print('Keep Trying!');
      break;
    default:
      print('Invalid grade');
  }

  /*
  ============================================
  ⚠️ Common Mistakes
  ============================================
  */

  // if (x = 5) { } // ❌ Error: = is assignment, not comparison
  // if (x == '5') { } // ❗ May not behave as expected if types don't match

  /*
  ============================================
  📝 TODOs for Practice
  ============================================

  TODO: Write an if/else to check if a number is even or odd.
  TODO: Use a switch to print messages based on the day of the week.
  TODO: Create a login simulation: check if user is admin, user, or guest.
  TODO: Handle grade levels with switch: A, B, C, D, F.
  TODO: Try nesting an if inside another if (if inside if).
  */
}


// ?? if null