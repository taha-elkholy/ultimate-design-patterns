import 'package:dart_2/solid/interface_segregation/after/customer.dart';

abstract class UserManager {
  void updateUserProfile(Customer customer);
  void changePassword(Customer customer, String newPassword);
}
