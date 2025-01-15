import 'package:dart_2/behavioral/strategy/before/checkout.dart';
import 'package:dart_2/behavioral/strategy/before/membership_type.dart';
import 'package:dart_2/behavioral/strategy/before/payment_method.dart';
import 'package:dart_2/behavioral/strategy/before/product.dart';

void main(List<String> args) {
  final mobile = Product(name: "Mobile", price: 1000);
  final mobilePrice = mobile.calculatePrice(MembershipType.regular);
  print('mobilePrice: $mobilePrice');

  final laptop = Product(name: "Laptop", price: 10000);
  final laptopPrice = laptop.calculatePrice(MembershipType.gold);
  print('laptopPrice: $laptopPrice');

  final pc = Product(name: "PC", price: 5000);
  final pcPrice = pc.calculatePrice(MembershipType.gold);
  print('pcPrice: $pcPrice');

  final checkout = Checkout();

  checkout.processPayment(mobilePrice, PaymentMethod.bankTransfer);
  checkout.processPayment(laptopPrice, PaymentMethod.payPal);
  checkout.processPayment(pcPrice, PaymentMethod.visaCard);
}
