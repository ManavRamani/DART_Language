import 'dart:io';

void main() {
  List<String> inputList = [];

  print("Enter Items (type 'done' to finish) : ");

  while (true) {
    String input = stdin.readLineSync() ?? 'done';
    if (input.toLowerCase() == 'done') {
      break;
    }
    inputList.add(input);
  }

  List<String> uniqueElements = inputList.toSet().toList();

  print("Unique Items in the list : ");
  for (String index in uniqueElements) {
    print(index);
  }
}
