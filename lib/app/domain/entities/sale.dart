class Sale {
  dynamic id;
  final dynamic clientId;
  final dynamic productId;
  final bool status;
  final DateTime date;
  final double value;

  Sale({
    this.id,
    required this.clientId,
    required this.productId,
    required this.status,
    required this.date,
    required this.value,
  });
}
