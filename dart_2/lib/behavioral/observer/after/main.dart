import 'package:dart_2/behavioral/observer/after/customer.dart';
import 'package:dart_2/behavioral/observer/after/job_finder.dart';
import 'package:dart_2/behavioral/observer/after/offer.dart';
import 'package:dart_2/behavioral/observer/after/online_marketplace.dart';
import 'package:dart_2/behavioral/observer/after/product.dart';
import 'package:dart_2/behavioral/observer/after/subscription_type.dart';

void main() {
  final OnlineMarketPlace onlineMarketPlace = OnlineMarketPlace();

  final ahmed = Customer(name: "Ahmed");
  final mahmoud = Customer(name: "Mahmoud");
  final youssef = Customer(name: "Youssef");
  final mostafa = JobFinder(name: "Mostafa");

  onlineMarketPlace.subscriber(
    SubscriptionType.product,
    ahmed,
  );
  onlineMarketPlace.subscriber(
    SubscriptionType.offer,
    ahmed,
  );
  onlineMarketPlace.subscriber(
    SubscriptionType.product,
    mahmoud,
  );
  onlineMarketPlace.subscriber(
    SubscriptionType.offer,
    youssef,
  );
  onlineMarketPlace.subscriber(
    SubscriptionType.jobOpening,
    mostafa,
  );

  onlineMarketPlace.addProduct(Product(name: "Mobile", price: 1000));
  onlineMarketPlace
      .addOffer(Offer(message: "New offer with 20% discount for every item."));

  onlineMarketPlace.openingNewJob("SalesMan");
}
