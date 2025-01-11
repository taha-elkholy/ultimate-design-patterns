import 'package:dart_2/behavioral/observer/after/offer.dart';
import 'package:dart_2/behavioral/observer/after/product.dart';
import 'package:dart_2/behavioral/observer/after/subscriber.dart';
import 'package:dart_2/behavioral/observer/after/subscription_type.dart';

class OnlineMarketPlace {
  final Map<SubscriptionType, List<Subscriber>> subscribers;
  final List<Product> products;
  final List<Offer> offers;

  OnlineMarketPlace({
    Map<SubscriptionType, List<Subscriber>>? subscribers,
    List<Product>? products,
    List<Offer>? offers,
  })  : subscribers = subscribers ??
            {
              SubscriptionType.product: [],
              SubscriptionType.offer: [],
              SubscriptionType.jobOpening: [],
            },
        products = products ?? [],
        offers = offers ?? [];

  void subscriber(SubscriptionType type, Subscriber subscriber) {
    subscribers[type]!.add(subscriber);
  }

  void unSubscriber(SubscriptionType type, Subscriber subscriber) {
    subscribers[type]!.remove(subscriber);
  }

  void addProduct(Product product) {
    products.add(product);
    notifySubscribers(
        SubscriptionType.product, "New product is added: ${product.name}");
  }

  void addOffer(Offer offer) {
    offers.add(offer);
    notifySubscribers(
        SubscriptionType.offer, "New offer is added: ${offer.message}");
  }

  void openingNewJob(String message) {
    notifySubscribers(SubscriptionType.jobOpening, message);
  }

  void notifySubscribers(SubscriptionType type, String message) {
    for (var subscriber in subscribers[type]!) {
      subscriber.notify(message);
    }
  }
}
