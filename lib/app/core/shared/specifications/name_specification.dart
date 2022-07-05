class NameSpecification {
  static bool isSatisfiedBy(String? name) {
    if (name == null) {
      return false;
    }

    if (name.isEmpty) {
      return false;
    }

    return true;
  }
}
