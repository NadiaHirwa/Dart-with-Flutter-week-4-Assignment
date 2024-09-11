import 'dart:io';

void main() {
  // Initialize collections
  List<String> stringList = [];
  Set<String> stringSet = {};
  Map<String, String> stringMap = {};

  // Read user input for string manipulation
  print("Enter a string for manipulation:");
  String userInput = stdin.readLineSync()!;

  // Perform string manipulations
  String reversedString = reverseString(userInput);
  int lengthOfString = userInput.length;
  String upperCaseString = userInput.toUpperCase();
  String lowerCaseString = userInput.toLowerCase();
  String substring = userInput.substring(0, userInput.length > 5 ? 5 : userInput.length);

  // Log date and time
  DateTime now = DateTime.now();
  String dateTimeLog = formatDateTime(now);

  // Store results in collections
  stringList.add(userInput);
  stringList.add(reversedString);
  stringSet.add(userInput);
  stringSet.add(reversedString);
  stringMap[dateTimeLog] = "Original: $userInput, Reversed: $reversedString, Length: $lengthOfString, Upper: $upperCaseString, Lower: $lowerCaseString, Substring: $substring";

  // Save data to file
  saveDataToFile('output.txt', stringMap);

  // Print results
  print("String List: $stringList");
  print("String Set: $stringSet");
  print("String Map: $stringMap");
}

String reverseString(String str) {
  return str.split('').reversed.join('');
}

String formatDateTime(DateTime dateTime) {
  return "${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}";
}

void saveDataToFile(String filePath, Map<String, String> data) {
  try {
    File file = File(filePath);
    String content = '';
    data.forEach((key, value) {
      content += "$key: $value\n";
    });
    file.writeAsStringSync(content);
    print("Data saved to '$filePath' successfully.");
  } catch (e) {
    print("An error occurred while saving data: $e");
  }
}
