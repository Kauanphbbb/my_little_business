class Expense {
  dynamic id;
  final dynamic tagId;
  final String name;
  final double value;
  final DateTime date;

  Expense({
    this.id,
    required this.tagId,
    required this.name,
    required this.value,
    required this.date,
  });
}
