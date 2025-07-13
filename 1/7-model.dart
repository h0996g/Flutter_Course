/*
============================================
Model and Map in Dart
Full Lesson: Why and How to Use Models with Map
============================================

This lesson explains:
- Why we use models instead of raw maps
- How to convert from Map to Model and back
- How this improves safety, clarity, and code quality
*/

class User {
  String name;
  int age;
  String email;
  bool isActive;

  // Constructor
  User({
    required this.name,
    required this.age,
    required this.email,
    required this.isActive,
  });

  // Create a User from a Map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      age: map['age'],
      email: map['email'],
      isActive: map['isActive'],
    );
  }

  // Convert User to Map
  Map<String, dynamic> toMap() {
    return {'name': name, 'age': age, 'email': email, 'isActive': isActive};
  }

  @override
  String toString() {
    return 'User(name: $name, age: $age, email: $email, isActive: $isActive)';
  }
}

void main() {
  // Step 1: Raw map from API or local JSON
  Map<String, dynamic> userMap = {
    'name': 'Sara',
    'age': 28,
    'email': 'sara@gmail.com',
    'isActive': true,
  };

  // Step 2: Convert map to User object
  User user = User.fromMap(userMap);
  print('User object: $user');
  print('Name: ${user.name}');
  print('Email: ${user.email}');

  // Step 3: Convert User object back to Map
  Map<String, dynamic> backToMap = user.toMap();
  print('Back to Map: $backToMap');

  // Why we use models:
  // - Avoids typos like map['nam'] which would return null silently
  // - Code is cleaner, more readable
  // - Autocomplete works (e.g. user.name)
  // - You can validate or add logic inside the model
  // - Helps structure large apps and API integration

  // TODO: Create your own model (Book, Product, etc.)
  // TODO: Practice converting Map → Model → Map
  // TODO: Add error handling (e.g. check if keys exist in the map)

  // ! ERROR: Missing key in map causes crash
  // User brokenUser = User.fromMap({'name': 'Ali'}); // Missing age, email, etc.

  // ? What if the API sends a string instead of int for age?
  // Try map['age'] = 'twenty-eight'
}
