class Order {
  final String name;
  final double price;
  static const double shippingCost = 10.0;

  Order({required this.name, required this.price});

  double get getTotalPrice => price + shippingCost;
}
