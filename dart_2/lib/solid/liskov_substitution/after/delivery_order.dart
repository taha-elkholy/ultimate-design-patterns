import 'package:dart_2/solid/liskov_substitution/after/order.dart';
import 'package:dart_2/solid/liskov_substitution/after/order_price_calculator.dart';

class DeliveryOrder extends Order implements OrderPriceCalculator {
  DeliveryOrder({
    required super.name,
    required super.price,
    super.serviceFee,
  });

  static const double _shippingCost = 10.0;
  @override
  double get totalPrice => _shippingCost + super.price + super.serviceFee;
}
