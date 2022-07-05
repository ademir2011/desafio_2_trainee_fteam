import 'password_specification.dart';

class ConfirmPasswordSpecification {
  static bool isSatisfiedBy(String? password, String? confirmPassword) {
    if (!PasswordSpecification.isSatisfiedBy(password)) {
      return false;
    }

    if (confirmPassword == null) {
      return false;
    } else if (confirmPassword.length < 6) {
      return false;
    }

    if (password != confirmPassword) {
      return false;
    }

    return true;
  }
}
