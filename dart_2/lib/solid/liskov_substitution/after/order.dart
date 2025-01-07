class Order {
  final String name;
  final double price;
  final double serviceFee;
  Order({
    required this.name,
    required this.price,
    this.serviceFee = 0.0,
  });
}
