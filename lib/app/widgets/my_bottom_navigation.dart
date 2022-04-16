import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;
  const MyBottomNavigation(
      {Key? key, required this.onItemTapped, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF090CB6),
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.sell), label: 'Vendas'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag), label: 'Produtos'),
        BottomNavigationBarItem(icon: Icon(Icons.money_off), label: 'Despesas'),
      ],
    );
  }
}
