import 'package:dart_2/behavioral/observer/before/offer.dart';
import 'package:dart_2/behavioral/observer/before/product.dart';

class User {
  final String name;
  final bool isSubscribedOnProducts;
  final bool isSubscribedOnOffers;

  const User({
    required this.name,
    required this.isSubscribedOnProducts,
    required this.isSubscribedOnOffers,
  });

  void notifyProduct(Product product) {
    print("Notifying $name about new product: ${product.name}");
  }

  void notifyOffer(Offer offer) {
    print("Notifying $name about new offer: ${offer.message}");
  }
}
