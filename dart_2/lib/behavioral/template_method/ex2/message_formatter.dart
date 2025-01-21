abstract class MessageFormatter {
  bool _validateMessage() {
    print('Validating message...');
    return true;
  }

  bool _checkMessageSize() {
    print('Checking message size...');
    return true;
  }

  void format(String message) {
    _validateMessage();
    _checkMessageSize();
  }
}
