import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Corse',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'New Shoes',
        amount: 99.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Groceries',
        amount: 49.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('The chart'),
        Expanded(
         child: ExpensesList(expenses: _registeredExpenses,),
        )
      ],
    );
  }
}
