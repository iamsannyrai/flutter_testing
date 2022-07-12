import 'package:flutter_test/flutter_test.dart';
import 'package:testing/validator.dart';

void main() {
  group('Email Validator', () {
    test('checks if email is empty', () {
      const String email = "";
      String? result = Validator.vaildateEmail(email);
      expect(result, "Required Field");
    });

    test('checks if email is invalid', () {
      const String email = "yoemail";
      String? result = Validator.vaildateEmail(email);
      expect(result, "Invalid Email");
    });

    test('checks if email is valid', () {
      const String email = "test@test.com";
      String? result = Validator.vaildateEmail(email);
      expect(result, null);
    });
  });

  group('Password Validator', () {
    test('checks if password is empty', () {
      const String password = "";
      String? result = Validator.validatePassword(password);
      expect(result, "Required Field");
    });

    test('checks if password is valid', () {
      const String password = "password";
      String? result = Validator.validatePassword(password);
      expect(result, null);
    });
  });
}
