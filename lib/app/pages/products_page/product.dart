import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product(
      {Key? key, required this.name, required this.value, required this.qtd})
      : super(key: key);

  final String name;
  final double value;
  final int qtd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name),
            Text('R\$ $value'),
            Text('QTD: $qtd'),
            Container(
              padding:
                  const EdgeInsets.only(right: 8, left: 8, top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.deepPurple,
              ),
              child: Text(
                'Tag'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
