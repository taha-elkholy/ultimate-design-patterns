import 'package:dart_2/solid/open_close/after/payment_strategy.dart';
import 'package:dart_2/solid/shared/order.dart';

class PaymentProcessor {
  final PaymentStrategy paymentStrategy;

  PaymentProcessor(this.paymentStrategy);

  void processPayment(Order order) {
    print("Processing payment of order ${order.name}");
    print("Issuing payment for amount ${order.price}");
    paymentStrategy.processPayment(order.price);
  }
}
