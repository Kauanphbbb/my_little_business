import 'package:flutter/material.dart';
import 'package:my_little_business/app/pages/sales_page/sale.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Produtos'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: [
            Sale(
              name: 'Produto 1',
              value: 10.0,
              qtd: 1,
              date: DateTime.now(),
              confirmed: true,
            ),
            Sale(
              name: 'Produto 2',
              value: 20.0,
              qtd: 2,
              date: DateTime.now(),
              confirmed: false,
            ),
            Sale(
              name: 'Produto 3',
              value: 30.0,
              qtd: 3,
              date: DateTime.now(),
              confirmed: true,
            ),
          ],
        ));
  }
}
