void main() {
  List l1 = [1, 2, 3];

  var l2 = l1.map((e) {
    return "$e hello";
  }).toList();

  print(l2);
}
