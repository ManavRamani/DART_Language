//Write a Dart program to print multiplication table of user given number :

import 'dart:io';

void main() {
  int num, ans;
  
  print("Enter Any Number : ");
  num = int.parse(stdin.readLineSync()!);
  
  for (int i = 1; i <= 10; i++) 
  {
    ans = num * i;
    print("$num : $i : $ans");
  }
}
