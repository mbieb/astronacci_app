import 'dart:io';

import 'package:astronacci_app/app/infrastructure/logger_interceptor/logger_interceptor.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

final LoggerInterceptor _dioLogger = LoggerInterceptor(
  requestBody: true,
  request: true,
  requestHeader: true,
  responseBody: true,
  responseHeader: true,
);

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() {
    Dio dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 120000),
      receiveTimeout: const Duration(seconds: 60000),
      sendTimeout: const Duration(seconds: 60000),
      headers: null,
      baseUrl: '',
    );
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return null;
    };
    dio.options = options;
    dio.interceptors.add(_dioLogger);
    return dio;
  }

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  Logger get logger => Logger(printer: PrettyPrinter());
}
