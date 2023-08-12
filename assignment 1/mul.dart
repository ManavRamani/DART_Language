// Write a Dart program to perform multiplication of two user given numbers :

import 'dart:io';

void main() {
  print("Enter the 1st Value : ");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Enter the 2nd value : ");
  int num2 = int.parse(stdin.readLineSync()!);

  int ans = num1 * num2;
  print("The Ans of $num1 * $num2 = $ans");
}
