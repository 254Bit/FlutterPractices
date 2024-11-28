import 'package:flutter/material.dart';
import 'package:olivia_expense/date_time_helper/date_time_helper.dart';
import 'package:olivia_expense/models/expense_items.dart';

class ExpenseData extends ChangeNotifier {
  // List of all expenses

  List<ExpenseItem> overallExpenseList = [];

  // Get expense list
  List<ExpenseItem> getAllExpenseList() {
    return overallExpenseList;
  }

  // Add new expense
  void addNewExpense(ExpenseItem newExpense) {
    overallExpenseList.add(newExpense);
    notifyListeners();
  }

  // Delete Expense
  void deleteExpense(ExpenseItem expense) {
    overallExpenseList.remove(expense);
    notifyListeners();
  }

  // Get Weekday (Mon, Tues, etc) from a dateTime object
  String getDayName(DateTime dateTime) {
    switch (dateTime.weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return ' ';
    }
  }

  // Get The Date for the start of the week
  DateTime startOfWeekDate() {
    DateTime? startOfWeek;

    // get today's date
    DateTime today = DateTime.now();

    // go backwards from today to find sunday
    for (int i = 0; i < 7; i++) {
      if (getDayName(today.subtract(Duration(days: i))) == 'sun') {
        startOfWeek = today.subtract(Duration(days: i));
      }
    }
    return startOfWeek!;
  }

  /* 
  Convert overall list of expenses into a daily expense summary

  e.g.
  overallExpenseList = [
  
  [ food, 2024/11/27, 30],
  [ shoes, 2024/11/28, 20],
  
  ]

  -> DailyExpenseSummary =
  [
  [20241127: 30],
  [20241128: 20]
  ]

  */
  Map<String, double> calculateDailyExpenseSummary() {
    Map<String, double> dailyExpenseSummary = {
      // date (yyyymmdd): amountTotalForDay
    };

    for (var expense in overallExpenseList) {
      String date = convertDateTimeToString(expense.dateTime);
      double amount = double.parse(expense.amount);

      if (dailyExpenseSummary.containsKey(date)) {
        double currentAmount = dailyExpenseSummary[date]!;
        currentAmount += amount;
        dailyExpenseSummary[date] = currentAmount;
      } else {
        dailyExpenseSummary.addAll({date: amount});
      }
    }
    return dailyExpenseSummary;
  }
}
