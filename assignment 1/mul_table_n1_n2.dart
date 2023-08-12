//

import 'dart:io';

void main() {
  int n1, n2;

  print("Enter Any Number : ");
  n1 = int.parse(stdin.readLineSync()!);
  n2 = int.parse(stdin.readLineSync()!);

  for (int i = n1; i <= n2; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i : $j : ${i * j}");
    }
  }
}
