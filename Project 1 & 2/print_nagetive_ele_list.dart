void main() {
  List l1 = [1, 4, -3, -7, 3, 5, 7, -10, -13, -2003, -4];
  print("Simple print List : $l1");
  List l2 = [];
  l1.forEach((element) {
    if (element < 0) {
      return l2.add(element);
    }
  });
  print("Nagetive Elements : $l2");
}
