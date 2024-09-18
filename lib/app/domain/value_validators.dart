import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class ValueValidators {
  static Either<ValueFailure<String>, String> validateMaxStringLength(
    String input,
    int maxLength,
  ) {
    if (input.length <= maxLength) {
      return right(input);
    } else {
      return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength),
      );
    }
  }

  static Either<ValueFailure<String>, String> validateMinStringLength(
    String input,
    int minLength,
  ) {
    if (input.length >= minLength) {
      return right(input);
    } else {
      return left(
        ValueFailure.lengthTooShort(failedValue: input, min: minLength),
      );
    }
  }

  static Either<ValueFailure<String>, String> validatePassword(
    String input,
    int minLength,
  ) {
    bool hasAlphabet = RegExp(r'[a-zA-Z]').hasMatch(input);
    bool hasNumeric = RegExp(r'[0-9]').hasMatch(input);
    bool hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(input);
    bool isLengthValid = input.length >= minLength;

    int patternMatch = [hasAlphabet, hasNumeric, hasSpecialChar]
        .where((element) => element)
        .length;
    if (patternMatch == 1) {
      return left(ValueFailure.passwordStrengthWeak(failedValue: input));
    } else if (patternMatch == 2 || !isLengthValid) {
      return left(ValueFailure.passwordStrengthMedium(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<ValueFailure<String>, String> validateStringNotEmpty(
      String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(ValueFailure.empty(failedValue: input));
    }
  }

  static Either<ValueFailure<String>, String?> validateStringCannotEmpty(
      String? input) {
    if (input == null || input.isEmpty) {
      return left(ValueFailure.empty(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<ValueFailure<String>, String> validateSingleLine(String input) {
    if (input.contains('\n')) {
      return left(ValueFailure.multiline(failedValue: input));
    } else {
      return right(input);
    }
  }

  static Either<ValueFailure<IList<T>>, IList<T>> validateMaxListLength<T>(
    IList<T> input,
    int maxLength,
  ) {
    if (input.length() <= maxLength) {
      return right(input);
    } else {
      return left(ValueFailure.listTooLong(
        failedValue: input,
        max: maxLength,
      ));
    }
  }

  static Either<ValueFailure<String>, String> validatePhone(String input) {
    if (CommonUtils.isPhoneNumber(input)) {
      debugPrint('right $input');
      return right(input);
    } else {
      debugPrint('left 2 $input');
      return left(ValueFailure.invalidPhone(failedValue: input));
    }
  }

  static Either<ValueFailure<String>, String> validateEmail(String input) {
    if (CommonUtils.isEmail(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidEmail(failedValue: input));
    }
  }

  static Either<ValueFailure<String>, String> validateToken(
      String input, int maxLength) {
    if (input.length == maxLength) {
      return right(input);
    } else if (input.length < maxLength) {
      return left(ValueFailure.shortToken(failedValue: input));
    } else {
      return left(
          ValueFailure.exceedingLength(failedValue: input, max: maxLength));
    }
  }

  static Either<ValueFailure<String>, String> validateDate(
      DateTime input, String pattern) {
    String? sDate = CommonUtils.dateFormat(pattern, input);
    if (sDate == null) {
      return left(
          ValueFailure.invalidDateTime(failedValue: input, pattern: pattern));
    }
    return right(sDate);
  }
}
