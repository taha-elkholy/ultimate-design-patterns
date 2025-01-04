import 'package:dart_2/solid/open_close/after/payment_strategy.dart';

class VisaPaymentStrategy implements PaymentStrategy {
  @override
  void processPayment(double amount) {
    print("Processing visa card payments...");
  }
}
