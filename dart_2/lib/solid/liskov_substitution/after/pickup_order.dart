import 'package:dart_2/solid/liskov_substitution/after/order.dart';
import 'package:dart_2/solid/liskov_substitution/after/order_price_calculator.dart';

class PickupOrder extends Order implements OrderPriceCalculator {
  PickupOrder({
    required super.name,
    required super.price,
    super.serviceFee,
  });

  @override
  double get totalPrice => serviceFee + super.price;
}
