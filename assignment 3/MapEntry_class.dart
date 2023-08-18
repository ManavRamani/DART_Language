import 'dart:io';

void main() {
  List<MapEntry<int, Map<String, dynamic>>> employees = [];

  for (int i = 1; i <= 3; i++) {
    print("Enter details for Employee $i:");
    print("Employee Id : ");
    String empid = stdin.readLineSync() ?? '0';
    print("Employee Name : ");
    String name = stdin.readLineSync() ?? '0';
    print("Employee Age : ");
    String empage = stdin.readLineSync() ?? '0';
    print("Employee Salary : ");
    String empsal = stdin.readLineSync() ?? '0';

    int id = int.parse(empid);
    int age = int.parse(empage);
    double salary = double.parse(empsal);

    Map<String, dynamic> employeeData = {
      "name": name,
      "age": age,
      "salary": salary,
    };

    employees.add(MapEntry(id, employeeData));
  }

  print("\nEmployee Information:");
  for (var entry in employees) {
    print("ID : ${entry.key}");
    print("Name : ${entry.value['name']}");
    print("Age : ${entry.value['age']}");
    print("Salary : ${entry.value['salary']}");
    print("\n");
  }
}
