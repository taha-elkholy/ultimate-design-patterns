import 'package:dart_2/solid/interface_segregation/after/subscription_notification_service.dart';
import 'package:dart_2/solid/interface_segregation/after/user_manager.dart';

class Customer implements UserManager, SubscriptionNotificationService {
  final String name;
  final String email;

  const Customer(this.name, this.email);

  @override
  void changePassword(Customer customer, String newPassword) {
    print("Changing password...");
  }

  @override
  void subscribeToMSNotifications() {
    print("Notifying password...");
  }

  @override
  void subscribeToNewProductsAvailability() {
    print("subscribing...");
  }

  @override
  void updateUserProfile(Customer customer) {
    print("updating...");
  }
}
