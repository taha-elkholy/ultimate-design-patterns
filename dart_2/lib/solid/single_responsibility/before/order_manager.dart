import 'package:dart_2/shared/helper_methods.dart';
import 'package:dart_2/solid/shared/customer.dart';
import 'package:dart_2/solid/shared/order.dart';
import 'package:dart_2/solid/shared/payment.dart';

class OrderManager {
  void processOrder(Order order) {
    print("Processing order: ${order.name} now...");
  }

  void processPayment(Order order, Payment payment) {
    print("Processing payment of order ${order.name}");
    print("Issuing payment for amount ${order.price}");
    if (equalsIgnoreCase(payment.type, "VISA")) {
      print("Processing visa card payments...");
    } else if (equalsIgnoreCase(payment.type, "Master_Card")) {
      print("Processing master card payments...");
    } else if (equalsIgnoreCase(payment.type, "American_Express")) {
      print("Processing american express card payments...");
    } else {
      throw UnsupportedError("Un supported payment...");
    }
  }

  void sendingEmailNotification(Customer customer, String message) {
    print(
        "Sending email notification to: ${customer.email} with message: $message");
  }
}
