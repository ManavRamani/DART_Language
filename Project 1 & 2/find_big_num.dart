void main() {
  // Create List :
  List num_list = [10, 30, 20, 40, 60, 70, 9, 13];
  // Assign List index first value :
  int num = num_list[0];
  // forLoop :
  // First inti i = 1,
  // then condition(i < length of list num_list total) 1<8,
  // i += 1
  for (int i = 1; i < num_list.length; i++) {
    // Check Condition (num_list[i]=num_list[1] > num=num_list[0])
    if (num_list[i] > num) {
      // condotion True -> Assign new Index of Letest
      // Like num = num_list[i]
      // Means num_list[1] = 30
      num = num_list[i];
    }
  }
  // Print Final Output of Big Value......
  print("this number is Largest : $num");
}
