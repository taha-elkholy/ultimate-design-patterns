import 'package:dart_2/uml/address.dart';
import 'package:dart_2/uml/logger.dart';
import 'package:dart_2/uml/logging_student_activity.dart';

class Student implements LoggingStudentActivity {
  final int studentId;
  final String name;
  final int age;
  final Address address;

  Student(this.studentId, this.name, this.age, this.address);
  void displayStudentInfo() {
    print("StudentId: $studentId");
    print("Name: $name");
    print("Age: $age");
  }

  void log(String message) {
    Logger logger = Logger();
    logger.log(message);
  }

  @override
  void logStudentActivity(String message) {
    log(message);
  }
}
