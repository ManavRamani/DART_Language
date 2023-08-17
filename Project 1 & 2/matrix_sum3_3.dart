void main() {
  List m1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  List m2 = [
    [10, 20, 30],
    [40, 50, 60],
    [70, 80, 90]
  ];
  List? sum = [];

  for (int i = 0; i < 3; i++) {
    List row = [];
    for (int j = 0; j < 3; j++) {
      row.add(m1[i][j] + m2[i][j]);
    }
    sum.add(row);
  }
  for (int i = 0; i < 3; i++) {
    print(sum[i]);
  }
}
