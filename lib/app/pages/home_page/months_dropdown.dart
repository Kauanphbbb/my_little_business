import 'package:flutter/material.dart';

class MonthsDropdown extends StatefulWidget {
  const MonthsDropdown({Key? key, required this.selectedMonth})
      : super(key: key);

  static final List<String> months = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  final String selectedMonth;

  @override
  State<MonthsDropdown> createState() => _MonthsDropdownState();
}

class _MonthsDropdownState extends State<MonthsDropdown> {
  String selectedMonth = MonthsDropdown.months[0];

  @override
  void initState() {
    super.initState();
    selectedMonth = widget.selectedMonth;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedMonth,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedMonth = newValue!;
        });
      },
      items:
          MonthsDropdown.months.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
