import 'package:dart_2/behavioral/strategy/after/checkout.dart';
import 'package:dart_2/behavioral/strategy/after/membership_strategy.dart';
import 'package:dart_2/behavioral/strategy/after/payment_strategy.dart';
import 'package:dart_2/behavioral/strategy/after/product.dart';

void main(List<String> args) {
  final mobile = Product(
    name: "Mobile",
    price: 1000,
    membershipStrategy: RegularMembershipStrategy(),
  );
  final mobilePrice = mobile.calculatePrice();
  print('mobilePrice: $mobilePrice');

  final laptop = Product(
    name: "Laptop",
    price: 10000,
    membershipStrategy: GoldMembershipStrategy(),
  );
  final laptopPrice = laptop.calculatePrice();
  print('laptopPrice: $laptopPrice');

  final pc = Product(
    name: "PC",
    price: 5000,
    membershipStrategy: PremiumMembershipStrategy(),
  );
  final pcPrice = pc.calculatePrice();
  print('pcPrice: $pcPrice');

  final visaCheckout = Checkout(paymentStrategy: VisaCardPaymentStrategy());
  visaCheckout.processPayment(mobilePrice);

  final bankCheckout = Checkout(paymentStrategy: BankTransferPaymentStrategy());
  bankCheckout.processPayment(laptopPrice);

  final paypalCheckout = Checkout(paymentStrategy: PayPalPaymentStrategy());
  paypalCheckout.processPayment(pcPrice);
}
