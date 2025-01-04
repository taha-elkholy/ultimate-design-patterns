import 'package:dart_2/solid/open_close/after/payment_strategy.dart';

class PaypalPaymentStrategy implements PaymentStrategy {
  @override
  void processPayment(double amount) {
    print("Processing paypal payments...");
  }
}
