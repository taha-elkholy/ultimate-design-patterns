import 'package:dart_2/solid/interface_segregation/after/subscription_notification_service.dart';

class Subscriber implements SubscriptionNotificationService {
  @override
  void subscribeToMSNotifications() {
    print("Notifying password ...");
  }

  @override
  void subscribeToNewProductsAvailability() {
    print("subscribing ...");
  }
}
