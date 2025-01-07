import 'package:dart_2/solid/interface_segregation/before/customer.dart';
import 'package:dart_2/solid/interface_segregation/before/user_manager.dart';

class Subscriber implements UserManager {
  @override
  void changePassword(Customer customer, String newPassword) {}

  @override
  void subscribeToMSNotifications() {}

  @override
  void subscribeToNewProductsAvailability() {
    print("subscribing ...");
  }

  @override
  void updateUserProfile(Customer customer) {
    print("updating");
  }
}
