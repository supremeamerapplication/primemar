class Validators {
  static bool isEmail(String value) {
    return RegExp(r"^[^@\s]+@[^@\s]+\.[^@\s]+$").hasMatch(value);
  }
}
