import 'package:flutter/material.dart';
import 'package:olivia_expense/components/expense_summary.dart';
import 'package:olivia_expense/components/expense_tile.dart';
import 'package:olivia_expense/expense_data/expense_data.dart';
import 'package:olivia_expense/models/expense_items.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Text Controllers
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

// Add new expense
  void addNewExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add New Expense'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: newExpenseNameController,
                  ),
                  TextField(
                    controller: newExpenseAmountController,
                  ),
                ],
              ),
              actions: [
                //save button
                MaterialButton(onPressed: save, child: const Text('Save')),
                //cancel button
                MaterialButton(onPressed: cancel, child: const Text('Cancel'))
              ],
            ));
  }

  // save
  void save() {
    // create expense item
    ExpenseItem newExpense = ExpenseItem(
      name: newExpenseNameController.text,
      amount: newExpenseAmountController.text,
      dateTime: DateTime.now(),
    );
    Provider.of<ExpenseData>(context, listen: false).addNewExpense(newExpense);

    Navigator.pop(context);
  }

  //cancel
  void cancel() {
    Navigator.pop(context);
  }

  // Clear
  void clear() {
    newExpenseNameController.clear();
    newExpenseAmountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.grey[300],
          floatingActionButton: FloatingActionButton(
            onPressed: addNewExpense,
            backgroundColor: Colors.black,
            child: const Icon(Icons.add),
          ),
          body: ListView(
            // Expense List
            children: [
              // Weekly Summary
              ExpenseSummary(startOfWeek: value.startOfWeekDate()),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.getAllExpenseList().length,
                  itemBuilder: ((context, index) => ExpenseTile(
                        name: value.getAllExpenseList()[index].name,
                        amount: value.getAllExpenseList()[index].amount,
                        dateTime: value.getAllExpenseList()[index].dateTime,
                      ))),
            ],
          )),
    );
  }
}
