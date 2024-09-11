import 'dart:io';

void main() {
  // Input: User's string
  print("Enter a string:");
  String inputString = stdin.readLineSync()!;

  // Concatenation
  print("Enter another string to concatenate:");
  String concatString = stdin.readLineSync()!;
  String concatenatedString = inputString + concatString;
  print("Concatenated String: $concatenatedString");

  // Interpolation
  String interpolatedString = "The original string is '$inputString' and the concatenated string is '$concatenatedString'.";
  print("Interpolated String: $interpolatedString");

  // Substring Extraction
  print("Enter the start index for substring extraction:");
  int startIndex = int.parse(stdin.readLineSync()!);
  print("Enter the end index for substring extraction:");
  int endIndex = int.parse(stdin.readLineSync()!);
  String substring = inputString.substring(startIndex, endIndex);
  print("Substring: $substring");

  // Case Conversion
  print("Uppercase String: ${inputString.toUpperCase()}");
  print("Lowercase String: ${inputString.toLowerCase()}");

  // Reverse String
  String reversedString = inputString.split('').reversed.join('');
  print("Reversed String: $reversedString");

  // Count Length
  int length = inputString.length;
  print("Length of the String: $length");
}
