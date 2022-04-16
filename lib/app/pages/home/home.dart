import 'package:flutter/material.dart';

import '../../widgets/my_bottom_navigation.dart';

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

  final List<Widget> _children = [
    const Text('Home'),
    const Text('Vendas'),
    const Text('Produtos'),
    const Text('Despesas'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _children[_selectedIndex],
      ),
      body: Center(
        child: _children[_selectedIndex],
      ),
      bottomNavigationBar: MyBottomNavigation(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
