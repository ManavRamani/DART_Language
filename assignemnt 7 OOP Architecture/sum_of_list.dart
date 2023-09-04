/*
    1. WAP to take a list using named parameter and return sum of all elements of list :
*/

int sum_List({required List<int> num}) {
  int ans = 0;
  for (int n1 in num) {
    ans += n1;
  }
  return ans;
}

void main() {
  List<int> l1 = [11, 22, 33, 44, 55, 66, 77, 88, 99];
  int ans = sum_List(num: l1);
  print("Sum of elements : $ans");
}
