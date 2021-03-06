import 'package:flutter/material.dart';
import 'package:my_little_business/app/pages/products_page/product.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.only(top: 16),
        children: const [
          Product(
            name: 'Produto 1',
            value: 10.0,
            qtd: 1,
          ),
          Product(
            name: 'Produto 2',
            value: 20.0,
            qtd: 2,
          ),
          Product(
            name: 'Produto 3',
            value: 30.0,
            qtd: 3,
          ),
        ],
      ),
    );
  }
}
