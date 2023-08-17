import 'dart:io';

void main() {
  List list1 = [];

  while (true) {
    print("\nMenu:");
    print("1. Add Element");
    print("2. Display Elements");
    print("3. Update Element");
    print("4. Delete Element");
    print("5. Exit");

    stdout.write("Enter your choice : ");
    String? choice = stdin.readLineSync() ?? '0';

    switch (choice) {
      // Insert Means Add New Element ........
      case '1':
        stdout.write("Enter Element to add : ");
        String? Element = stdin.readLineSync() ?? '0';
        list1.add(Element);
        print("Element '$Element' added.");
        break;

      // Read Means Display List Elements.....
      case '2':
        if (list1.isEmpty) {
          print("List is Empty first add Element Then try to Display...");
        } else {
          print("Elements : ");
          for (int i = 0; i < list1.length; i++) {
            print("${i + 1}. ${list1[i]}");
          }
        }
        break;

      // Update Means Change in List in Any Element....
      case '3':
        if (list1.isEmpty) {
          print("List is Empty first add Element Then try to update...");
        } else {
          for (int i = 0; i < list1.length; i++) {
            print("${i + 1}. ${list1[i]}");
          }
          stdout.write("Enter Element number to update : ");
          String? index1 = stdin.readLineSync() ?? '0';
          int? index = int.parse(index1) - 1;

          if (index >= 0 && index < list1.length) {
            stdout.write("Enter new value : ");
            String? newValue = stdin.readLineSync() ?? '0';
            list1[index] = newValue;
            print("Element updated...");
          } else {
            print("This Element Not in List...");
          }
        }
        break;

      // Delete Element.....
      case '4':
        if (list1.isEmpty) {
          print("List is Empty First Add Element Then try to Delete....");
        } else {
          for (int i = 0; i < list1.length; i++) {
            print("${i + 1}. ${list1[i]}");
          }
          stdout.write("Enter Element number to delete : ");

          String index1 = stdin.readLineSync() ?? '0';
          int? index = int.parse(index1) - 1;
          if (index >= 0 && index < list1.length) {
            String removedElement = list1.removeAt(index);
            print("Element '$removedElement' deleted.");
          } else {
            print("This Element Not in List...");
          }
        }
        break;

      // Exit......
      case '5':
        print("Thanks For Visit...");
        return;

      // Wrong Choice.......
      default:
        print("No Problem Try Next Time......");
    }
  }
}
