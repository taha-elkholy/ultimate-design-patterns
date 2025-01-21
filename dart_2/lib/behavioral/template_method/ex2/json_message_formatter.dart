import 'package:dart_2/behavioral/template_method/ex2/message_formatter.dart';

class JsonFormatter extends MessageFormatter {
  @override
  void format(String message) {
    super.format(message);
    print("{\"message\": \"$message\"}");
  }
}
