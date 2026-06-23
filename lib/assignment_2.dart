void main() {

  List<String> list1 = ["Tonmoy", "Sakib"];
  List<String> list2 = ["Rahat", "Nafis"];

  List<String> students = [...list1, ...list2];

  Set<String> courses = {"Flutter", "Dart", "Git"};

  bool isNewStudent = true;
  if (isNewStudent) {
    students.add("Rahim");
  }

  Map<String, int> ages = {
    "Tonmoy": 22,
    "Sakib": 23,
    "Rahat": 21,
    "Nafis": 24,
    if (isNewStudent) "Rahim": 20
  };

  print("Students:");
  print(students);

  print("\nCourses:");
  print(courses);

  print("\nStudent Ages:");
  ages.forEach((name, age) {
    print("$name -> $age");
  });
}