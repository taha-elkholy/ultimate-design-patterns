import 'package:dart_2/solid/interface_segregation/before/customer.dart';

abstract class UserManager {
  void subscribeToNewProductsAvailability();
  void subscribeToMSNotifications();
  void updateUserProfile(Customer customer);
  void changePassword(Customer customer, String newPassword);
}
