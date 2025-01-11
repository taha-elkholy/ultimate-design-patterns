import 'package:dart_2/behavioral/observer/before/offer.dart';
import 'package:dart_2/behavioral/observer/before/online_marketplace.dart';
import 'package:dart_2/behavioral/observer/before/product.dart';
import 'package:dart_2/behavioral/observer/before/user.dart';

void main() {
  final OnlineMarketPlace onlineMarketPlace = OnlineMarketPlace();
  onlineMarketPlace.addUser(
    User(
      name: "Ahmed",
      isSubscribedOnProducts: true,
      isSubscribedOnOffers: true,
    ),
  );
  onlineMarketPlace.addUser(
    User(
      name: "Mahmoud",
      isSubscribedOnProducts: false,
      isSubscribedOnOffers: true,
    ),
  );
  onlineMarketPlace.addUser(
    User(
      name: "Youssef",
      isSubscribedOnProducts: true,
      isSubscribedOnOffers: false,
    ),
  );
  onlineMarketPlace.addUser(
    User(
      name: "Mostafa",
      isSubscribedOnProducts: false,
      isSubscribedOnOffers: false,
    ),
  );

  onlineMarketPlace.addProduct(Product(name: "Mobile", price: 1000));
  onlineMarketPlace
      .addOffer(Offer(message: "New offer with 20% discount for every item."));
}
