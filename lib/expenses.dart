import 'package:expense_app_redo/moels/expense.dart';
import 'package:expense_app_redo/widgets/expenses_list.dart';
import 'package:expense_app_redo/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Chapo Beans',
        amount: 3,
        date: DateTime.now(),
        category: Category.food
      ),
    Expense(
        title: 'Cinema',
        amount: 15,
        date: DateTime.now(),
        category: Category.leisure
      ),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(
      context: context, 
      builder: (ctx) => const NewExpense(),
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay, 
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
