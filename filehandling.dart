import 'dart:io';

void main() {
  // Specify file paths
  print("Enter the path of the file to read from:");
  String inputFilePath = stdin.readLineSync()!;
  print("Enter the path of the file to write to:");
  String outputFilePath = stdin.readLineSync()!;

  // Read from the input file
  try {
    File inputFile = File(inputFilePath);
    if (inputFile.existsSync()) {
      String fileContent = inputFile.readAsStringSync();
      print("Content of the file '$inputFilePath':");
      print(fileContent);

      // Write to the output file
      File outputFile = File(outputFilePath);
      outputFile.writeAsStringSync(fileContent);
      print("Content written to '$outputFilePath' successfully.");
    } else {
      print("Error: The file '$inputFilePath' does not exist.");
    }
  } catch (e) {
    print("An error occurred: $e");
  }

  // Add new data to the output file
  print("Enter additional data to append to the output file:");
  String additionalData = stdin.readLineSync()!;
  
  try {
    File outputFile = File(outputFilePath);
    outputFile.writeAsStringSync('\n$additionalData', mode: FileMode.append);
    print("Additional data appended to '$outputFilePath' successfully.");
  } catch (e) {
    print("An error occurred while appending data: $e");
  }
}
