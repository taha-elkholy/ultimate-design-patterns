import 'package:dart_2/behavioral/strategy/after/payment_strategy.dart';

class Checkout {
  final PaymentStrategy paymentStrategy;

  Checkout({required this.paymentStrategy});
  void processPayment(double price) {
    paymentStrategy.pay(price);
  }
}
