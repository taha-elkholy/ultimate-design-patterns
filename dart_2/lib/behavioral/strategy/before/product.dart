import 'package:dart_2/behavioral/strategy/before/membership_type.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});

  double calculatePrice(MembershipType membershipType) {
    if (membershipType == MembershipType.gold) {
      return price * 0.9;
    } else if (membershipType == MembershipType.premium) {
      return price * 0.8;
    }
    return price;
  }
}
