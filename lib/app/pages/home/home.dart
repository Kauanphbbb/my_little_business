import 'package:flutter/material.dart';
import 'package:my_little_business/app/pages/expenses_page/expenses_page.dart';
import 'package:my_little_business/app/pages/products_page/products_page.dart';
import 'package:my_little_business/app/pages/sales_page/sales_page.dart';

import '../../widgets/my_bottom_navigation.dart';
import '../home_page/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomePage(),
    const SalesPage(),
    const ProductsPage(),
    const ExpensesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: MyBottomNavigation(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
