void main() {
  //   for (int i = 1; i <= 3; i++) {
  //     print("for loop $i: salary is BDT ${(emp.salary)}");
  //   }

  //   int num = 1;
  //   do {
  //     print("do - while loop: ${emp.name}");
  //     num++;
  //   } while (num <= 3);

  //   String choice = "rashed";
  //   switch (choice) {
  //     case "Rashed":
  //       print("switch case: show employee name → ${emp.name}");
  //       break;
  //     case "rashed":
  //       print("switch Case: show employee salary → ${emp.salary}");
  //       break;
  //     default:
  //       print("Hello world");
  //   }

  Employee employee = Employee("Rashed", 50000.0);
  employee.printEmployee(100000);

  Manager manager = Manager("Alice", 75000.0, aDepartment: "Engineering");

  manager.displayEmployee();

  Worker worker = Worker("sales");

  worker.displayEmployee();

  List<Employee> employees = [employee, manager, worker];

  for (var currentEmployee in employees) {
    currentEmployee.printEmployee();
  }
}

class Employee {
  String name;
  double salary;
  
  Employee(this.name, this.salary);
  
  void printEmployee([double? s]) {
    print("employee name: $name");
    print("employee salary: BDT ${s ?? salary}");
  }
}

class Manager extends Employee {
  String? aDepartment;

  Manager(String aName, double aSalary, {required this.aDepartment})
    : super(aName, aSalary);

  void displayEmployee() {
    super.printEmployee();

    print("employee department: $aDepartment");
  }
}

class Worker extends Manager {
  Worker(String workerDepartment)
    : super("Abcdaf Worker", 35000, aDepartment: workerDepartment);
}
