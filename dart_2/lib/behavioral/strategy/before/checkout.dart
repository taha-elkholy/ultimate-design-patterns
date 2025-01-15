import 'package:dart_2/behavioral/strategy/before/payment_method.dart';

class Checkout {
  void processPayment(double price, PaymentMethod paymentMethod) {
    if (paymentMethod == PaymentMethod.bankTransfer) {
      print("bankTransfer: processing with price: \$$price");
    } else if (paymentMethod == PaymentMethod.payPal) {
      print(
          "payPal: processing with price: \$${price + 200} after \$200 fees.");
    } else if (paymentMethod == PaymentMethod.visaCard) {
      print(
          "visaCard: processing with price: \$${price + 100} after \$100 fees.");
    }
  }
}
