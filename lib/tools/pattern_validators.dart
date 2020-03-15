/// Mixin with methods to validate certain patterns
/// is character strings.
mixin PatternValidatorMixin {
  /// Checks if the given [value] contains at least one number.
  bool containsAtLeastOneNumber(String value) {
    const Pattern pattern = r'(?=.*?[0-9])';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  /// Checks if the given [value] contains only numbers.
  bool containsOnlyNumbers(String value) {
    const Pattern pattern = r'^[0-9]*$';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  /// Checks if the given [value] represents a valid email address.
  bool isValidEmail(String value) {
    const Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  /// Checks if the given [value] contains at least one upper case letter.
  bool hasUpperCase(String value) {
    const Pattern pattern = r'^(?=.*?[A-Z])';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  /// Checks if the given [value] contains at least one lower case letter.
  bool hasLowerCase(String value) {
    const Pattern pattern = r'(?=.*?[a-z])';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  /// Checks if the given [value] contains at least one special character.
  bool hasSpecialCharacter(String value) {
    const Pattern pattern = r'(?=.*?[#?!@$%^&*-])';
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}
