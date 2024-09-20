import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_form.freezed.dart';

@freezed
class RegisterForm with _$RegisterForm {
  const RegisterForm._();
  const factory RegisterForm({
    required FullName fullName,
    required RegisterPassword password,
    required EmailAddress email,
    required Option<DropdownText> gender,
    required Option<DropdownText> province,
    required Option<DateTime> birthDate,
    required Option<String> imageUrl,
  }) = _RegisterForm;

  factory RegisterForm.init() => RegisterForm(
        fullName: const FullName(''),
        password: const RegisterPassword(''),
        email: const EmailAddress(''),
        gender: none(),
        province: none(),
        birthDate: none(),
        imageUrl: none(),
      );

  Option<ValueFailure> get failureOption {
    return fullName.failureOrUnit
        .andThen(password.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(failureOrGender)
        .andThen(failureOrProvince)
        .andThen(failureOrBirthDate)
        .andThen(failureOrImageUrl)
        .fold((f) => some(f), (_) => none());
  }

  bool get isValid => failureOption.fold(() => true, (a) => false);

  Either<ValueFailure<String>, Unit> get failureOrGender {
    return gender.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (gender) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrProvince {
    return province.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (province) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrBirthDate {
    return birthDate.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (birthDate) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrImageUrl {
    return imageUrl.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (imageUrl) => right(unit),
    );
  }

  String get imageUrlValue => imageUrl.fold(() => '', (val) => val);
}

@freezed
class SignInForm with _$SignInForm {
  const SignInForm._();
  const factory SignInForm({
    required SignInPassword password,
    required EmailAddress email,
  }) = _SignInForm;

  Option<ValueFailure> get failureOption {
    return email.failureOrUnit
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }

  factory SignInForm.init() => const SignInForm(
        password: SignInPassword(''),
        email: EmailAddress(''),
      );
}

@freezed
class ProfileForm with _$ProfileForm {
  const ProfileForm._();
  const factory ProfileForm({
    required FullName fullName,
    required EmailAddress email,
    required Option<DropdownText> gender,
    required Option<DropdownText> province,
    required Option<DateTime> birthDate,
    required Option<String> imageUrl,
  }) = _ProfileForm;

  factory ProfileForm.init() => ProfileForm(
        fullName: const FullName(''),
        email: const EmailAddress(''),
        gender: none(),
        province: none(),
        birthDate: none(),
        imageUrl: none(),
      );

  Option<ValueFailure> get failureOption {
    return fullName.failureOrUnit
        .andThen(failureOrGender)
        .andThen(failureOrProvince)
        .andThen(failureOrBirthDate)
        .andThen(failureOrImageUrl)
        .fold((f) => some(f), (_) => none());
  }

  bool get isValid => failureOption.fold(() => true, (a) => false);

  Either<ValueFailure<String>, Unit> get failureOrGender {
    return gender.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (gender) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrProvince {
    return province.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (province) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrBirthDate {
    return birthDate.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (birthDate) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrImageUrl {
    return imageUrl.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (imageUrl) => right(unit),
    );
  }

  String get imageUrlValue => imageUrl.fold(() => '', (val) => val);
}

@freezed
class ForgotPasswordForm with _$ForgotPasswordForm {
  const ForgotPasswordForm._();
  const factory ForgotPasswordForm({
    required EmailAddress email,
  }) = _ForgotPasswordForm;

  Option<ValueFailure> get failureOption {
    return email.failureOrUnit.fold((f) => some(f), (_) => none());
  }

  factory ForgotPasswordForm.init() => const ForgotPasswordForm(
        email: EmailAddress(''),
      );
}
