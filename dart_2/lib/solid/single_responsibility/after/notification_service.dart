import 'package:dart_2/solid/shared/customer.dart';

class NotificationService {
  void sendingEmailNotification(Customer customer, String message) {
    print(
        "Sending email notification to: ${customer.email} with message: $message");
  }
}
