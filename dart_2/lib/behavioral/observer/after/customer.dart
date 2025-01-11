import 'package:dart_2/behavioral/observer/after/subscriber.dart';

class Customer implements Subscriber {
  final String name;

  const Customer({
    required this.name,
  });

  @override
  void notify(String message) {
    print("Notifying $name about $message");
  }
}
