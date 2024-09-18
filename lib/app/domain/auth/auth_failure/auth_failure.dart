import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.error(String message) = _InvalidEmailOrPassword;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.noInternet() = _NoInternet;
  const factory AuthFailure.timeOut() = _TimeOut;
  const factory AuthFailure.noData() = _NoData;
  const factory AuthFailure.initialOpenApp() = _InitialOpenApp;
  const factory AuthFailure.cancelled() = _Cancelled;
}
