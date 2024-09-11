import 'dart:io';

void main() {
  // Lists
  List<String> myList = [];
  print("Enter items to add to the list (type 'done' to finish):");
  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') break;
    myList.add(input);
  }
  print("Original List: $myList");

  // Operations on List
  print("Enter an item to remove from the list:");
  String itemToRemove = stdin.readLineSync()!;
  myList.remove(itemToRemove);
  print("Updated List after removing '$itemToRemove': $myList");

  // Sets
  Set<String> mySet = myList.toSet();
  print("Set created from the list: $mySet");

  // Operations on Set
  print("Enter an item to add to the set:");
  String itemToAdd = stdin.readLineSync()!;
  mySet.add(itemToAdd);
  print("Updated Set after adding '$itemToAdd': $mySet");

  print("Enter an item to remove from the set:");
  String itemToRemoveFromSet = stdin.readLineSync()!;
  mySet.remove(itemToRemoveFromSet);
  print("Updated Set after removing '$itemToRemoveFromSet': $mySet");

  // Maps
  Map<String, int> myMap = {};
  print("Enter key-value pairs for the map (format: key:value, type 'done' to finish):");
  while (true) {
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') break;
    List<String> parts = input.split(':');
    if (parts.length == 2) {
      String key = parts[0];
      int value = int.parse(parts[1]);
      myMap[key] = value;
    } else {
      print("Invalid format. Use 'key:value'.");
    }
  }
  print("Original Map: $myMap");

  // Operations on Map
  print("Enter a key to remove from the map:");
  String keyToRemove = stdin.readLineSync()!;
  myMap.remove(keyToRemove);
  print("Updated Map after removing key '$keyToRemove': $myMap");

  print("Enter a key-value pair to add to the map (format: key:value):");
  String keyValuePair = stdin.readLineSync()!;
  List<String> keyValueParts = keyValuePair.split(':');
  if (keyValueParts.length == 2) {
    String newKey = keyValueParts[0];
    int newValue = int.parse(keyValueParts[1]);
    myMap[newKey] = newValue;
    print("Updated Map after adding '$newKey: $newValue': $myMap");
  } else {
    print("Invalid format. Use 'key:value'.");
  }
}
