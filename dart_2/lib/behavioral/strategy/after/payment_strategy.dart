abstract class PaymentStrategy {
  void pay(double amount);
}

class VisaCardPaymentStrategy implements PaymentStrategy {
  @override
  void pay(double price) {
    print("Processing visa card payments with price: \$$price");
  }
}

class PayPalPaymentStrategy implements PaymentStrategy {
  @override
  void pay(double price) {
    print("Processing paypal payments with price: \$$price");
  }
}

class BankTransferPaymentStrategy implements PaymentStrategy {
  @override
  void pay(double price) {
    print("Processing bank transfer payments with price: \$$price");
  }
}
