void main() {
  Employee emp = Employee("Rashed", 50000);
  emp.displayEmployee(30000);
  for (int i = 1; i <= 3; i++) {
    print("for loop $i: salary is BDT ${(emp.salary)}");
  }
  int num = 1;
  do {
    print("do - while loop: ${emp.name}");
    num++;
  } while (num <= 3);
  String choice = "rashed";
  switch (choice) {
    case "Rashed":
      print("switch case: show employee name → ${emp.name}");
      break;
    case "rashed":
      print("switch Case: show employee salary → ${emp.salary}");
      break;
    default:
      print("Hello world");
  }
}
class Employee {
  Employee(this.name, this.salary);
  String name;
  double salary;
  void displayEmployee(double s) {
    print("employee name: $name");
    print("employee salary: BDT $s");
  }
}