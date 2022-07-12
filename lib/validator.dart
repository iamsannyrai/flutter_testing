abstract class Validator {
  static const String _emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  static String? vaildateEmail(String email) {
    if (email.isEmpty) {
      return "Required Field";
    } else {
      RegExp regExp = RegExp(_emailPattern);
      if (regExp.hasMatch(email)) {
        return null;
      }
      return "Invalid Email";
    }
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Required Field";
    }
    return null;
  }
}
