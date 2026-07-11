import 'dart:io';

// Extension Method
extension CurrencyFormat on double {
  String toCurrency() {
    return "৳${toStringAsFixed(2)}";
  }
}

// Parent Class
class Expense {
  String title;
  double amount;
  String category;

  Expense(this.title, this.amount, this.category);

  void display() {
    print("$title - ${amount.toCurrency()} - $category");
  }
}

// Child Class: Food
class FoodExpense extends Expense {
  FoodExpense(String title, double amount)
      : super(title, amount, "Food");

  @override
  void display() {
    print("$title - ${amount.toCurrency()} - Food");
  }
}

// Child Class: Transport
class TransportExpense extends Expense {
  TransportExpense(String title, double amount)
      : super(title, amount, "Transport");

  @override
  void display() {
    print("$title - ${amount.toCurrency()} - Transport");
  }
}

// Child Class: Entertainment
class EntertainmentExpense extends Expense {
  EntertainmentExpense(String title, double amount)
      : super(title, amount, "Entertainment");

  @override
  void display() {
    print("$title - ${amount.toCurrency()} - Entertainment");
  }
}

void main() {
  List<Expense> expenses = [];

  while (true) {
    print("\n===== Expense Tracker =====");
    print("1. Add Expense");
    print("2. View All Expenses");
    print("3. Show Total Expenses");
    print("4. Exit");

    stdout.write("Choose Option: ");
    int choice = int.tryParse(stdin.readLineSync() ?? "") ?? 0;

    switch (choice) {
      case 1:
        stdout.write("Enter Expense Title: ");
        String title = stdin.readLineSync() ?? "";

        stdout.write("Enter Expense Amount: ");
        double amount =
            double.tryParse(stdin.readLineSync() ?? "") ?? 0;

        stdout.write("Enter Category (Food/Transport/Entertainment): ");
        String category =
        (stdin.readLineSync() ?? "").trim().toLowerCase();

        Expense expense;

        if (category == "food") {
          expense = FoodExpense(title, amount);
        } else if (category == "transport") {
          expense = TransportExpense(title, amount);
        } else if (category == "entertainment") {
          expense = EntertainmentExpense(title, amount);
        } else {
          expense = Expense(title, amount, "Other");
        }

        expenses.add(expense);
        print("\nExpense Added Successfully!");
        break;

      case 2:
        print("\n===== All Expenses =====");

        if (expenses.isEmpty) {
          print("No expenses found.");
        } else {
          for (int i = 0; i < expenses.length; i++) {
            stdout.write("${i + 1}. ");
            expenses[i].display();
          }
        }
        break;

      case 3:
        double total = 0;

        for (Expense expense in expenses) {
          total += expense.amount;
        }

        print("\nTotal Expenses: ${total.toCurrency()}");
        break;

      case 4:
        print("\nThank you for using Expense Tracker!");
        return;

      default:
        print("\nInvalid Option! Please try again.");
    }
  }
}