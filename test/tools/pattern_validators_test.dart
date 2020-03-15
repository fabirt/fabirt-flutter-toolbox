import 'package:flutter_test/flutter_test.dart';
import 'package:fabirt_toolbox/tools.dart';

class PatternValidator with PatternValidatorMixin {}

void main() {
  PatternValidator patternValidator;

  setUp(() {
    patternValidator = PatternValidator();
  });

  group('pattern validator', () {
    test(
      'should contains at least one number',
      () {
        const tResult = true;
        const value = 'jhasd adjh 2jhbd';
        final result = patternValidator.containsAtLeastOneNumber(value);
        expect(result, equals(tResult));
      },
    );

    test(
      'should contains only numbers',
      () {
        const tResult = true;
        const value = '95039';
        final result = patternValidator.containsOnlyNumbers(value);
        expect(result, equals(tResult));
      },
    );

    test(
      'should represents a valid email address',
      () {
        const tResult = true;
        const value = 'test@mail.com';
        final result = patternValidator.isValidEmail(value);
        expect(result, equals(tResult));
      },
    );

    test(
      'should have uppercase',
      () {
        const tResult = true;
        const value = 'jhasd adjH 2jhbd';
        final result = patternValidator.hasUpperCase(value);
        expect(result, equals(tResult));
      },
    );

    test(
      'should have lowercase',
      () {
        const tResult = true;
        const value = 'jhasd adjh 2jhbd';
        final result = patternValidator.hasLowerCase(value);
        expect(result, equals(tResult));
      },
    );

    test(
      'should contains special character',
      () {
        const tResult = true;
        const value = 'jhasd adjh 2!jhbd';
        final result = patternValidator.hasSpecialCharacter(value);
        expect(result, equals(tResult));
      },
    );
  });
}
