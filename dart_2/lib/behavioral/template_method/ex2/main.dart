import 'package:dart_2/behavioral/template_method/ex2/html_message_formatter.dart';
import 'package:dart_2/behavioral/template_method/ex2/json_message_formatter.dart';
import 'package:dart_2/behavioral/template_method/ex2/plain_text_message_formatter.dart';

void main(List<String> args) {
  final plainTextFormatter = PlainTextFormatter();
  final htmlFormatter = HtmlFormatter();
  final jsonFormatter = JsonFormatter();

  plainTextFormatter.format("Hello");
  print('________________________');
  htmlFormatter.format("Hello");
  print('________________________');
  jsonFormatter.format("Hello");
}
