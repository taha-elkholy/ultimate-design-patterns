import 'package:dart_2/behavioral/strategy/after/membership_strategy.dart';

class Product {
  final String name;
  final double price;
  final MembershipStrategy membershipStrategy;

  Product({
    required this.name,
    required this.price,
    required this.membershipStrategy,
  });

  double calculatePrice() {
    return membershipStrategy.calculatePrice(price);
  }
}
