/*
============================================
Keyword: var vs dynamic
============================================

Both `var` and `dynamic` are used to declare variables **without specifying the type explicitly**.

BUT… they behave very differently!

------------------------------------------------------------
🔷 var
------------------------------------------------------------

- Dart infers the type based on the initial value.
- After that, the type is **fixed** — you can’t assign a different type later.

Example:
*/

void main() {
  // * var infers int
  var age = 30;
  print('Age: $age');

  // ! ERROR: You can’t assign a string to it later
  // age = 'thirty'; // ❌ Type Error

  // * var infers String
  var name = 'Ali';
  print('Name: $name');

  // ! ERROR: You can’t change to a number
  // name = 123; // ❌ Type Error

  /*
------------------------------------------------------------
🔶 dynamic
------------------------------------------------------------

- `dynamic` skips type checking at compile time.
- You can assign any type at any time.
- More flexible — but **more dangerous** if misused.
*/

  dynamic value = 'Hello';
  print('Dynamic (String): $value');

  value = 42; // ✅ allowed
  print('Dynamic (int): $value');

  value = true; // ✅ still allowed
  print('Dynamic (bool): $value');

  /*
------------------------------------------------------------
✅ So when to use what?
------------------------------------------------------------

Use `var` when:
- You know the type at the beginning.
- You want type safety.

Use `dynamic` when:
- You don’t know the type at all (e.g., parsing unknown JSON).
- You need flexibility and will handle errors manually.

-----------------------------------------

TODO: Create a variable with var and assign a string.
TODO: Try to reassign it with an int (observe the error).
TODO: Create a dynamic variable and assign different types.
TODO: Try calling a method that doesn’t exist on a dynamic.
TODO: Compare output and behavior of var vs dynamic.
*/
}
