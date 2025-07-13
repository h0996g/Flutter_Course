/*
============================================
Data Type: List
============================================

A `List` in Dart is an **ordered collection** of items.
It can store multiple values of the same or different types.

You can think of it like a numbered box: each item has an index starting from 0.
*/

void main() {
  // * Basic list of strings
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  print('Fruits: $fruits');

  // * Access items using index
  print('First fruit: ${fruits[0]}'); // Apple

  // * Modify an item
  fruits[1] = 'Orange';
  print('Updated list: $fruits');

  // * Add new item to end of the list
  fruits.add('Pineapple');
  print('Added item: $fruits');

  // * Add multiple items at once
  fruits.addAll(['Grapes', 'Melon']);
  print('List after addAll: $fruits');

  // * Remove an item by value
  fruits.remove('Apple');
  print('After removing Apple: $fruits');

  // * Remove item by index
  fruits.removeAt(2);
  print('After removing at index 2: $fruits');

  // * Check if list contains a value
  print('Contains Mango? ${fruits.contains('Mango')}');

  // * Length of list
  print('Number of fruits: ${fruits.length}');

  // * Loop through list using for loop
  for (int i = 0; i < fruits.length; i++) {
    print('Fruit at index $i: ${fruits[i]}');
  }

  // * Loop using forEach
  fruits.forEach((fruit) {
    print('Fruit: $fruit');
  });

  // * List of numbers (int)
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  // * Add number
  numbers.add(6);
  print('Updated numbers: $numbers');

  // TODO: Create a list of your 3 favorite movies and print them
  // TODO: Add one more movie to your list and print it
  // TODO: Replace the first item in the list with another value
  // TODO: Remove the last item in the list using removeLast()
  // TODO: Loop through your list using both for loop and forEach

  // ! ERROR: Accessing index out of range
  // print(fruits[100]); // ❌ IndexError

  // ! ERROR: Assigning wrong type in typed list
  // List<String> names = ['Ali', 'Sara'];
  // names.add(123); // ❌ Error: int in String list

  // * You can declare a dynamic list without specifying a type
  List dynamicList = [1, 'hello', true];
  print('Dynamic list: $dynamicList');

  // ? Try printing the last item in a list
  print('Last fruit: ${fruits[fruits.length - 1]}');

  // * Clear all items from a list
  fruits.clear();
  print('Cleared fruits: $fruits');
}
