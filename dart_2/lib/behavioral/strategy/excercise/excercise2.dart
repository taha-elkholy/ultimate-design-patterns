void main(List<String> args) {
  final user = User("John");
  final sms = SMSNotification();
  sms.sendNotification(user, "Hello");

  final email = EmailNotification();
  email.sendNotification(user, "Hello");

  final messenger = MessengerNotification();
  messenger.sendNotification(user, "Hello");
}

class User {
  String name;

  User(this.name);
}

abstract class NotificationStrategy {
  void sendNotification(User user, String message);
}

class SMSNotification implements NotificationStrategy {
  @override
  void sendNotification(User user, String message) {
    print("Send SMS Notification to ${user.name} $message");
  }
}

class EmailNotification implements NotificationStrategy {
  @override
  void sendNotification(User user, String message) {
    print("Send Email Notification to ${user.name} $message");
  }
}

class MessengerNotification implements NotificationStrategy {
  @override
  void sendNotification(User user, String message) {
    print("Send Messenger Notification to ${user.name} $message");
  }
}
