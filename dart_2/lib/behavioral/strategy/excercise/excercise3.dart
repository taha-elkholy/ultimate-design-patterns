void main(List<String> args) {
  final plainTextFormatter = PlainTextFormatter();
  final htmlFormatter = HtmlFormatter();
  final jsonFormatter = JsonFormatter();

  plainTextFormatter.format("Hello");
  htmlFormatter.format("Hello");
  jsonFormatter.format("Hello");
}

abstract class MessageFormatter {
  void format(String message);
}

class PlainTextFormatter implements MessageFormatter {
  @override
  void format(String message) {
    print(message);
  }
}

class HtmlFormatter implements MessageFormatter {
  @override
  void format(String message) {
    print("<p>$message</p>");
  }
}

class JsonFormatter implements MessageFormatter {
  @override
  void format(String message) {
    print("{\"message\": \"$message\"}");
  }
}
