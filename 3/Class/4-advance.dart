/*
============================================
Class Composition Example in Dart
============================================

Create two classes:
- Class `Address`: contains street, city, and zip
- Class `Person`: has an Address as one of its fields (Person "has an" Address)

This is useful for organizing data in real-world objects.
*/

void main() {
  // * Create an Address object
  Address homeAddress = Address('123 Main St', 'Algiers', '16000');

  // * Create a Person object and assign Address
  Person person = Person('Ali', 25, homeAddress);

  // * Print info
  person.introduce();

  // * Accessing fields of nested object
  print('City: ${person.address.city}');

  // TODO: Add a method in Address called fullAddress() that returns a full address string
  // TODO: Add a method in Person to return all details as string
  // TODO: Create multiple people with different addresses
  // TODO: Try using toString() override in both classes

  // ? Can a class contain multiple objects of another class?
}

// ============================================
// Address Class
// ============================================

class Address {
  String street;
  String city;
  String zip;

  Address(this.street, this.city, this.zip);

  String fullAddress() {
    return '$street, $city $zip';
  }

  @override
  String toString() {
    return fullAddress();
  }
}

// ============================================
// Person Class (has an Address)
// ============================================

class Person {
  String name;
  int age;
  Address address; // composition

  Person(this.name, this.age, this.address);

  void introduce() {
    print('Hi, I am $name. I live at ${address.fullAddress()}');
  }

  @override
  String toString() {
    return 'Person(name: $name, age: $age, address: ${address.toString()})';
  }
}
