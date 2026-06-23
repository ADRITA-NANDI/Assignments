void main() {
  String studentName = "Adrita Nandi";
  int marks = 65;

  String grade;

  if (marks >= 80) {
    grade = 'A';
  } else if (marks >= 70) {
    grade = 'B';
  } else if (marks >= 60) {
    grade = 'C';
  } else {
    grade = 'F';
  }

  print("Student Report\n");
  print("Name: $studentName");
  print("Marks: $marks");
  print("Grade: $grade\n");

  switch (grade) {
    case 'A':
      print("Excellent Work");
      break;
    case 'B':
      print("Good Job");
      break;
    case 'C':
      print("Fair Effort");
      break;
    case 'F':
      print("Failed. Try Again");
      break;
    default:
      print("Invalid Grade");
  }
}