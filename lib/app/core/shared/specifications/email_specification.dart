class EmailSpecification {
  static bool isSatisfiedBy(String? email) {
    if (email == null) {
      return false;
    }

    if (!email.contains('@')) {
      return false;
    }

    return true;
  }
}
