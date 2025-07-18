/*
==================================================
📘 Dart Enums 
==================================================

🔹 What is an Enum?
An `enum` (short for "enumeration") is a special type in Dart used to represent a fixed set of constant values.

You use enums when you have a **limited set of options**, like days of the week, user roles, traffic lights, etc.

==================================================
🔸 Basic Enum Example
*/

enum TrafficLight { red, yellow, green }

void main() {
  TrafficLight current = TrafficLight.red;

  if (current == TrafficLight.red) {
    print("Stop");
  }

  // Print the name of the enum value
  print(current.name); // red
}

/*
==================================================
🔸 Enums are Great For:
- Preventing invalid values
- Improving readability
- Avoiding strings or numbers for fixed categories

🔸 Example: Days of the Week
*/

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void checkDay(Day day) {
  if (day == Day.sunday || day == Day.saturday) {
    print("It's weekend!");
  } else {
    print("It's a working day.");
  }
}

void main2() {
  checkDay(Day.friday); // It's a working day.
  checkDay(Day.sunday); // It's weekend!
}

/*
==================================================
🔸 Looping Through Enum Values
*/

void printAllDays() {
  for (var day in Day.values) {
    print(day.name);
  }
}

/*
==================================================
🔸 Enums with Switch Case
*/

void actionForLight(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      print("Stop");
      break;
    case TrafficLight.yellow:
      print("Get ready");
      break;
    case TrafficLight.green:
      print("Go!");
      break;
  }
}

/*
==================================================
⚠️ Common Mistakes:
- ❌ Using strings or numbers where enums are better.
- ❌ Forgetting `.name` to print enum as text.
- ❌ Using `== "red"` instead of `== TrafficLight.red`.

==================================================
📝 Exercises:
1. Create an enum `UserRole` with `admin`, `editor`, `viewer`. Write a function that prints different messages based on role.
2. Create an enum `Season` with 4 values. Use a switch case to print what you wear in each season.
3. Create a loop that prints all values in the `Season` enum.

==================================================
🧠 Summary:
Enums help keep your code clean, type-safe, and easy to read when you have a **predefined list of values**.
*/
