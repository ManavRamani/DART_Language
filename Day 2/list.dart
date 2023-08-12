/**
 * Types of collection data Types
 * List (Fixed length & growable)
 * Generics
 * 1D Array using List
 
 * List 
 * Map
 * set
 * 
 */
void main() {
  List<int> l8 = [1, 2, 5, 4, 7, 5, 5];
  print(l8);
  l8.add(10);
  print(l8);

  // ---------------------------------------------------------------
  // List l1 = List.filled(5, "Hello");
  // print(l1);

  // l1[2] = "add";
  // print(l1);

  // List l6 = List.unmodifiable([1, 3, 4, 5, 6]);
  // print(l6);

  // List l4 = List.generate(6, (index) => index);
  // print(l4);

  // List l5 = List.generate(6, (index) {
  //   if (index > 3) {
  //     return "Hello";
  //   } else {
  //     return index;
  //   }
  // });
  // print(l5);
//------------------------------------------------------------------------
  // List l2 = List.empty(); fix You cann't add or remove
  // List l2 = List.empty(growable: true); // You can add or remove
  // l2.add("first");

  // print(l2);

  // List list = [1, "Raj", 65.75];
  // print(list[1]);
  // print(list);

  // list.add("abc");
  // print(list);

  // list.remove(1);
  // print(list);

  // list.removeAt(2);
}
