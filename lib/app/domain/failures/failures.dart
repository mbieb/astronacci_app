import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class AppFailure<T> with _$AppFailure<T> {
  const AppFailure._();
  const factory AppFailure.error(String error) = _Error;
  const factory AppFailure.noInternet() = _NoInternet;
  const factory AppFailure.timeout() = _TimeOut;
  const factory AppFailure.unauthorized() = _Unauthorized;
  const factory AppFailure.handled(T failure) = _Handled;

  Option<AppFailure> get unauthorizedFailureOption =>
      maybeWhen(unauthorized: () => some(this), orElse: () => none());
}

AppFailure<A> appFailureConverter<B, A>(
  AppFailure<B> e, {
  AppFailure<A> Function(B)? convertHandled,
}) {
  return e.when(
    handled:
        convertHandled ?? (failure) => AppFailure.error(failure.toString()),
    error: (error) => AppFailure.error(error),
    noInternet: () => const AppFailure.noInternet(),
    timeout: () => const AppFailure.timeout(),
    unauthorized: () => const AppFailure.unauthorized(),
  );
}

AppFailure<T> handledAppFailure<T>(T failure) {
  return AppFailure<T>.handled(failure);
}

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T? failedValue,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.lengthTooShort({
    required T? failedValue,
    required int min,
  }) = TooShort<T>;
  const factory ValueFailure.passwordStrengthWeak({
    required String? failedValue,
  }) = PasswordStrengthWeak<T>;
  const factory ValueFailure.passwordStrengthMedium({
    required String? failedValue,
  }) = PasswordStrengthMedium<T>;
  const factory ValueFailure.empty({
    required T? failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    required T? failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    required T? failedValue,
    required int max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidPhone({
    required T? failedValue,
  }) = InvalidPhone<T>;
  const factory ValueFailure.invalidEmail({
    required T? failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.unregisteredPhone({
    required T? failedValue,
  }) = UnregisteredPhone<T>;
  const factory ValueFailure.invalidObject({
    required T? failedValue,
  }) = InvalidObject<T>;
  const factory ValueFailure.emptyObject() = EmptyObject<T>;
  const factory ValueFailure.shortToken({
    required T? failedValue,
  }) = ShortToken<T>;
  const factory ValueFailure.invalidDateTime(
      {required DateTime failedValue,
      required String pattern}) = InvalidDateTime<T>;
}
