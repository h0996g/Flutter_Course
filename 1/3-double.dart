/*
============================================
Data Type: double
============================================

A `double` is used to store numbers with decimal points.
It is perfect for measurements, prices, weights, averages, etc.

Examples: 3.14, 0.5, -10.75, 99.99
*/

void main() {
  // * Declare a double variable
  double price = 19.99;
  print('Price: $price');

  // * Basic arithmetic with doubles
  double tax = 0.05;
  double total = price + (price * tax);
  print('Total with tax: $total');

  // * Use toStringAsFixed() to format the output
  print('Formatted total: ${total.toStringAsFixed(2)}'); // 20.99

  // * Using double in expressions
  double radius = 7.5;
  double area = 3.14 * radius * radius;
  print('Area of circle: ${area.toStringAsFixed(1)}');

  // * Double division always gives decimal result
  print('10 / 3 = ${10 / 3}');

  // TODO: Create a double variable for your height in meters and print it
  // TODO: Multiply two double values (e.g., price * quantity)
  // TODO: Print a double value formatted with 1 and 3 decimal places

  // ! ERROR: Assigning a decimal to int
  // int wrongValue = 12.5; // Error: double to int

  // ! ERROR: Mixing double and string without conversion
  // print('Total is: ' + total); // Type error

  // * Correct way
  print('Total is: ' + total.toString());
  print('Total is: $total');

  // ? What happens if you divide a double by 0?
  double d = 5.5;
  print(d / 0); // Infinity (NOT an error, but be cautious)

  // * Dart automatically promotes int to double in operations
  double mixed = 10 + 0.5;
  print('Mixed int + double = $mixed');
}
