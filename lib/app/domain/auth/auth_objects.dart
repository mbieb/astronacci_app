import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/value_objects.dart';
import 'package:astronacci_app/app/domain/value_validators.dart';
import 'package:dartz/dartz.dart';

class FullName extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const FullName(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((a) => ValueValidators.validateMaxStringLength(a, 30));
}

class ConfirmPassword extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const ConfirmPassword(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((a) => ValueValidators.validateMinStringLength(a, 8))
          .flatMap((a) => ValueValidators.validateMaxStringLength(a, 16));
}

class SignInPassword extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const SignInPassword(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((a) => ValueValidators.validateMinStringLength(a, 8));
}

class RegisterPassword extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const RegisterPassword(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((a) => ValueValidators.validateMinStringLength(a, 8))
          .flatMap((a) => ValueValidators.validateMaxStringLength(a, 16));
}

class EmailAddress extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const EmailAddress(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((value) => ValueValidators.validateEmail(value));
}

class MobilePhoneNumber extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const MobilePhoneNumber(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((value) => ValueValidators.validateStringNotEmpty(value));
}

class Gender extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const Gender(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((value) => ValueValidators.validateStringNotEmpty(value));
}

class Province extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const Province(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((value) => ValueValidators.validateStringNotEmpty(value));
}

class BirthDate extends ValueObject<ValueFailure<String>, String> {
  @override
  final String value;

  const BirthDate(this.value);

  @override
  Either<ValueFailure<String>, String> get failureOrValue =>
      ValueValidators.validateStringNotEmpty(value)
          .flatMap((value) => ValueValidators.validateStringNotEmpty(value));
}
