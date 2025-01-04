import 'package:dart_2/solid/open_close/after/payment_strategy.dart';

class MasterCardPaymentStrategy implements PaymentStrategy {
  @override
  void processPayment(double amount) {
    print("Processing master card payments...");
  }
}
