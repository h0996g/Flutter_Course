/*
============================================
Data Type: Map
============================================

A `Map` is a collection of key-value pairs.

Each item has:
- A key (like a name or ID)
- A value (any data related to that key)

You can use a Map to store data like:
- names and scores
- usernames and emails
- countries and capitals
*/

void main() {
  // * Basic map with String keys and int values
  Map<String, int> scores = {'Ali': 90, 'Sara': 85, 'Omar': 78};
  print('Scores: $scores');

  // * Accessing a value by its key
  print('Sara\'s score: ${scores['Sara']}');

  // * Adding a new key-value pair
  scores['Lina'] = 88;
  print('Updated scores: $scores');

  // * Updating an existing value
  scores['Ali'] = 95;
  print('Ali\'s new score: ${scores['Ali']}');

  // * Checking if a key exists
  print('Has Omar? ${scores.containsKey('Omar')}');

  // * Checking if a value exists
  print('Contains score 100? ${scores.containsValue(100)}');

  // * Removing a key-value pair
  scores.remove('Omar');
  print('After removing Omar: $scores');

  // * Get all keys
  print('All students: ${scores.keys}');

  // * Get all values
  print('All scores: ${scores.values}');

  // * Looping through the map using forEach
  scores.forEach((key, value) {
    print('$key scored $value');
  });

  // * Example: Map with dynamic values
  Map<String, dynamic> user = {
    'name': 'Amal',
    'age': 30,
    'email': 'amal@example.com',
    'isActive': true,
  };
  print('User info: $user');

  // TODO: Create a Map of 3 country-capital pairs and print one of them
  // TODO: Add a new key-value pair to your map
  // TODO: Check if your map contains a specific key or value
  // TODO: Loop over the map and print each key and value

  // ! ERROR: Accessing a key that doesn’t exist returns null
  print('Unknown score: ${scores['John']}'); // returns null, not error

  // ! ERROR: Using the wrong type for key or value
  // Map<int, String> ids = {1: 'Ali'};
  // ids['one'] = 'Sara'; // ❌ String key in int-keyed map

  // ? Can you guess the output of: print(scores['Ali'] + 5); ?
  print('Ali + 5 = ${scores['Ali']! + 5}'); // Use ! to avoid null warning
}
