class PasswordSpecification {
  static bool isSatisfiedBy(String? password) {
    if (password == null) {
      return false;
    } else if (password.length < 6) {
      return false;
    }

    return true;
  }
}
