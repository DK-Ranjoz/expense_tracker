import 'package:expense_app_redo/moels/expense.dart';
import 'package:expense_app_redo/widgets/expese_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList ({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length, 
      itemBuilder:(cnt, index) => ExpenseItem(expenses[index])
    );
  }
} 