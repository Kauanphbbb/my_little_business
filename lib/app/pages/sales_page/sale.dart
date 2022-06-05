import 'package:flutter/material.dart';

class Sale extends StatefulWidget {
  const Sale(
      {Key? key,
      required this.name,
      required this.value,
      required this.qtd,
      required this.date,
      required this.confirmed})
      : super(key: key);

  final String name;
  final double value;
  final int qtd;
  final DateTime date;
  final bool confirmed;

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  bool isConfirmed = false;

  @override
  void initState() {
    super.initState();
    isConfirmed = widget.confirmed;
  }

  void onChanged(bool value) {
    setState(() {
      isConfirmed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.name),
            Text('${widget.date.day}/${widget.date.month}/${widget.date.year}'),
            Text('QTD: ${widget.qtd}'),
            Text(
              'R\$ ${widget.value}',
              style: const TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: isConfirmed,
              onChanged: onChanged,
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent,
              inactiveTrackColor: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
