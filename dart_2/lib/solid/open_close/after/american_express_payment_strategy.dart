import 'package:dart_2/solid/open_close/after/payment_strategy.dart';

class AmericanExpressPaymentStrategy implements PaymentStrategy {
  @override
  void processPayment(double amount) {
    print("Processing american express card payments...");
  }
}
