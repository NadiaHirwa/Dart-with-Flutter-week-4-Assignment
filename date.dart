import 'dart:io';

void main() {
  // Input: User's date in the format YYYY-MM-DD
  print("Enter the first date (YYYY-MM-DD):");
  DateTime firstDate = DateTime.parse(stdin.readLineSync()!);

  print("Enter the second date (YYYY-MM-DD):");
  DateTime secondDate = DateTime.parse(stdin.readLineSync()!);

  // Formatting Dates
  print("Formatted First Date: ${formatDate(firstDate)}");
  print("Formatted Second Date: ${formatDate(secondDate)}");

  // Manipulating Dates
  print("Enter the number of days to add to the first date:");
  int daysToAdd = int.parse(stdin.readLineSync()!);
  DateTime newDate = firstDate.add(Duration(days: daysToAdd));
  print("New Date after adding $daysToAdd days: ${formatDate(newDate)}");

  print("Enter the number of days to subtract from the first date:");
  int daysToSubtract = int.parse(stdin.readLineSync()!);
  newDate = firstDate.subtract(Duration(days: daysToSubtract));
  print("New Date after subtracting $daysToSubtract days: ${formatDate(newDate)}");

  // Calculating Difference Between Two Dates
  Duration difference = secondDate.difference(firstDate);
  print("Difference between the two dates: ${difference.inDays} days");
}

// Function to format DateTime objects
String formatDate(DateTime date) {
  return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
}
