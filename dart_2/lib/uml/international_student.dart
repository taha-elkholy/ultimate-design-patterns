import 'package:dart_2/uml/address.dart';
import 'package:dart_2/uml/student.dart';

class InternationalStudent extends Student {
  final String countryOfOrigin;
  final String visaStatus;

  InternationalStudent(
    this.countryOfOrigin,
    this.visaStatus,
  ) : super(0, '', 0, Address('', ''));
}
