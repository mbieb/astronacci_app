import 'dart:math';

import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:dio/dio.dart';

const _chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
Random _rnd = Random();
String _generateRandomString(int length) {
  return String.fromCharCodes(
    Iterable.generate(
      6,
      (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
    ),
  );
}

AppFailure<T> appExceptionToFailure<T>(
    AppException exception, StackTrace stack) {
  if (exception is UnauthorizedException) {
    return AppFailure<T>.unauthorized();
  } else if (exception is TimeoutException) {
    return AppFailure<T>.timeout();
  } else if (exception is NoInternetException) {
    return AppFailure<T>.noInternet();
  } else {
    return AppFailure<T>.error(exception.toString());
  }
}

AppFailure<T> dynamicErrorToFailure<T>(dynamic e, StackTrace stack) {
  if (e is AppException) return appExceptionToFailure(e, stack);
  return appExceptionToFailure(AppException(e.toString(), stack), stack);
}

class AppException implements Exception {
  late String error;
  final StackTrace stackTrace;
  late String id;

  AppException(String err, this.stackTrace) : id = _generateRandomString(6) {
    error = '$err (errno:$id)';
  }

  String get errorWithStackTrace {
    return '''$error
-----------------------------------
STACKTRACE:
$stackTrace''';
  }

  @override
  String toString() {
    return error;
  }
}

class ApiException extends AppException {
  final StackTrace stackTrace;
  final Response response;
  ApiException(
    this.response,
    this.stackTrace,
  ) : super('', stackTrace);

  @override
  String get error {
    return '''Api Exception (errno:$id):

Code :${response.statusCode}
Message :${response.statusMessage}
Data :${response.data}
-----------------------------------
$responseLog''';
  }

  String get responseLog {
    String responseLog = '''API : \n$_api''';

    return responseLog;
  }

  String get _api =>
      response.requestOptions.baseUrl + response.requestOptions.path;
}

class UnauthorizedException extends AppException {
  UnauthorizedException(StackTrace stackTrace)
      : super("Unautorized", stackTrace);
}

class CancelledException extends AppException {
  CancelledException(StackTrace stackTrace)
      : super("CancelledException", stackTrace);
}

class TimeoutException extends AppException {
  TimeoutException(StackTrace stackTrace) : super("Time Out", stackTrace);
}

class NoInternetException extends AppException {
  NoInternetException(StackTrace stackTrace) : super("No Internet", stackTrace);
}

class NotFoundException extends AppException {
  NotFoundException(StackTrace stackTrace) : super("Not found", stackTrace);
}

class InvalidPasswordException extends AppException {
  InvalidPasswordException(StackTrace stackTrace)
      : super("Password is invalid", stackTrace);
}

class InvalidEmailOrPasswordException extends AppException {
  InvalidEmailOrPasswordException(StackTrace stackTrace, String message)
      : super("Email or Password Wrong", stackTrace);
}
