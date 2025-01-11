import 'package:dart_2/behavioral/observer/before/offer.dart';
import 'package:dart_2/behavioral/observer/before/product.dart';
import 'package:dart_2/behavioral/observer/before/user.dart';

class OnlineMarketPlace {
  final List<User> users;
  final List<Product> products;
  final List<Offer> offers;

  OnlineMarketPlace({
    List<User>? users,
    List<Product>? products,
    List<Offer>? offers,
  })  : users = users ?? [],
        products = products ?? [],
        offers = offers ?? [];

  void addUser(User user) {
    users.add(user);
  }

  void addProduct(Product product) {
    products.add(product);
    notifyUsersProduct(product);
  }

  void addOffer(Offer offer) {
    offers.add(offer);
    notifyUsersOffer(offer);
  }

  void notifyUsersProduct(Product product) {
    for (var user in users) {
      if (user.isSubscribedOnProducts) {
        user.notifyProduct(product);
      }
    }
  }

  void notifyUsersOffer(Offer offer) {
    for (var user in users) {
      if (user.isSubscribedOnOffers) {
        user.notifyOffer(offer);
      }
    }
  }
}
