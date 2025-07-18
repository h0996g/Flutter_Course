/*
============================================
🔁 Dart Loops (Repetition Structures)
============================================

Loops are used to repeat a block of code **multiple times**.

There are 3 main types:

1. for loop        ➤ Runs a fixed number of times
2. while loop      ➤ Runs while a condition is true
3. do...while loop ➤ Runs at least once, then checks condition
*/

void main() {
  /*
  ============================================
  🔹 1️⃣ for loop
  ============================================
  */

  for (int i = 1; i <= 5; i++) {
    print('For loop - Count: $i');
  }

  // ✅ Best when you know how many times you want to loop

  /*
  ============================================
  🔹 2️⃣ while loop
  ============================================
  */

  int x = 1;

  while (x <= 3) {
    print('While loop - Count: $x');
    x++;
  }

  // ✅ Runs while the condition is true
  // ❗ Can result in infinite loop if condition never becomes false

  /*
  ============================================
  🔹 3️⃣ do...while loop
  ============================================
  */

  int y = 1;

  do {
    print('Do-While loop - Count: $y');
    y++;
  } while (y <= 2);

  // ✅ Runs at least one time even if condition is false later

  /*
  ============================================
  ⚠️ Common Mistakes
  ============================================

  ❌ Infinite loop (no increment!)
  while (true) {
    print('Oops!');
  }

  ❌ Wrong condition or typo
  for (int i = 0; i < 5; i--) {
    print(i); // This will go forever
  }
  */

  /*
  ============================================
  📝 TODOs for Practice
  ============================================

  TODO: Use a for loop to print numbers 1 to 10
  TODO: Use a while loop to count down from 5
  TODO: Use a do-while loop to print a message at least once
  TODO: Write a loop to calculate the sum of numbers from 1 to 100
  TODO: Loop through a list of names and print them
  TODO: Try an infinite loop and stop it manually to observe
  */
}
