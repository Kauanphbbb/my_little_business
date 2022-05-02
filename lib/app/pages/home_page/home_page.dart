import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu pequeno negócio'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),

          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('Entradas'),
                  Text('Saídas')
                ],
              ),
              Column(
                children: const [
                  Text('Balanço'),
                  Text('R\$ 1000.00')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
