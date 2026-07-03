import 'dart:io';

// Abstract Class
abstract class Person {
  void displayInfo();
}

// Student Class
class Student extends Person {
  // Encapsulation (Private Fields)
  String _name;
  int _age;
  String _department;

  // Constructor
  Student(this._name, this._age, this._department);

  // Getters (Arrow Functions)
  String get name => _name;
  int get age => _age;
  String get department => _department;

  set name(String value) => _name = value;
  set age(int value) => _age = value;
  set department(String value) => _department = value;

  @override
  void displayInfo() {
    print("Name       : $_name");
    print("Age        : $_age");
    print("Department : $_department");
    print("---------------------------");
  }
}

void main() {
  List<Student> students = [];

  while (true) {
    print("\n===== Student Information Manager =====");
    print("1. Add Student");
    print("2. View Students");
    print("3. Search Student");
    print("4. Delete Student");
    print("5. Exit");

    stdout.write("\nChoose: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addStudent(students);
        break;

      case '2':
        viewStudents(students);
        break;

      case '3':
        searchStudent(students);
        break;

      case '4':
        deleteStudent(students);
        break;

      case '5':
        print("\nThank you!");
        return;

      default:
        print("Invalid Choice!");
    }
  }
}

// Function: Add Student
void addStudent(List<Student> students) {
  stdout.write("Enter Name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter Age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Department: ");
  String department = stdin.readLineSync()!;

  students.add(Student(name, age, department));

  print("\nStudent Added Successfully!");
}

// Function: View Students
void viewStudents(List<Student> students) {
  if (students.isEmpty) {
    print("\nNo Student Found.");
    return;
  }

  print("\nStudent List:\n");

  // Anonymous Function
  students.forEach((student) {
    student.displayInfo();
  });
}

// Function: Search Student
void searchStudent(List<Student> students) {
  stdout.write("Enter Student Name: ");
  String searchName = stdin.readLineSync()!;

  bool found = false;

  for (var student in students) {
    if (student.name.toLowerCase() == searchName.toLowerCase()) {
      print("\nStudent Found:\n");
      student.displayInfo();
      found = true;
      break;
    }
  }

  if (!found) {
    print("\nStudent Not Found.");
  }
}

// Function: Delete Student
void deleteStudent(List<Student> students) {
  stdout.write("Enter Student Name to Delete: ");
  String deleteName = stdin.readLineSync()!;

  int index = students.indexWhere(
          (student) => student.name.toLowerCase() == deleteName.toLowerCase());

  if (index != -1) {
    students.removeAt(index);
    print("\nStudent Deleted Successfully.");
  } else {
    print("\nStudent Not Found.");
  }
}