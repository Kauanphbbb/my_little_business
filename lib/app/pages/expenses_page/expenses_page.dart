import 'package:flutter/material.dart';
import 'package:my_little_business/app/pages/expenses_page/expense.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(top: 16),
          children: [
            Expense(
              name: 'Produto 1',
              value: 20.00,
              date: DateTime.now(),
            ),
            Expense(
              name: 'Produto 2',
              value: 20.00,
              date: DateTime.now(),
            ),
            Expense(
              name: 'Produto 3',
              value: 30.00,
              date: DateTime.now(),
            ),
          ],
        ),
      ),
    );
  }
}
