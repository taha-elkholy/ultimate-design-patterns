import 'package:dart_2/solid/open_close/after/payment_processor.dart';
import 'package:dart_2/solid/open_close/after/paypal_payment_strategy.dart';
import 'package:dart_2/solid/shared/order.dart';

void main() {
  print("Hello World");
  final processor = PaymentProcessor(PaypalPaymentStrategy());
  processor.processPayment(Order(name: "OrderNo", price: 10));
}
