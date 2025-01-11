import 'package:dart_2/behavioral/observer/after/subscriber.dart';

class JobFinder implements Subscriber {
  final String name;

  JobFinder({required this.name});
  @override
  void notify(String message) {
    print('Notifying subscriber $name about new job alert: $message');
  }
}
