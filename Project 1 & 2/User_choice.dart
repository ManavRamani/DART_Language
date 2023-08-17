import 'dart:io';

void main() {
  List<List<int>> list1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  while (true) {
    print("\nMenu:");
    print("1. Sum of All Elements : ");
    print("2. Sum of specific Row : ");
    print("3. Sum of specific Column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");
    print("0. Exit");

    stdout.write("Enter your choice : ");
    String? choice = stdin.readLineSync() ?? '0';

    switch (choice) {
      case '1':
        int sum = 0;
        for (var row in list1) {
          for (int col in row) {
            sum += col;
          }
        }
        print("Sum of all elements: $sum");
        break;

      case '2':
        stdout.write("Enter row index (0-2) : ");

        String rowindex = stdin.readLineSync() ?? '0';
        int row1 = int.parse(rowindex);

        if (row1 >= 0 && row1 < 3) {
          int rowSum = list1[row1].reduce((a, b) => a + b);
          print("Sum of row $row1 : $rowSum");
        } else {
          print("Wrong Choice...");
        }
        break;

      case '3':
        stdout.write("Enter column index (0-2): ");
        String colIndex = stdin.readLineSync() ?? '0';
        int col2 = int.parse(colIndex);

        int sum = 0;

        for (int row in list1[col2]) {
          if (col2 >= 0 && col2 < row) {
            sum += row;
          } else {
            print("Invalid column index");
            return;
          }
        }

        break;

      case '4':
        int d_Sum = 0;
        for (int i = 0; i < list1.length; i++) {
          d_Sum += list1[i][i];
        }
        print("Sum of diagonal elements : $d_Sum");
        break;

      case '5':
        int antiD_Sum = 0;
        for (int i = 0; i < list1.length; i++) {
          antiD_Sum += list1[i][list1.length - i - 1];
        }
        print("Sum of antidiagonal elements: $antiD_Sum");
        return;

      case '0':
        print("Exit....");
        return;

      // Wrong Choice.......
      default:
        print("No Problem Try Next Time......");
        break;
    }
  }
}
