import 'dart:convert';

import 'package:astronacci_app/app/infrastructure/auth/dto/user_dto.dart';
import 'package:astronacci_app/app/infrastructure/exception/exception.dart';
import 'package:astronacci_app/app/infrastructure/storage/secure_storage.dart';
import 'package:astronacci_app/app/infrastructure/storage/storage_key.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthLocalDataSource {
  final SecureStorage _storage;

  AuthLocalDataSource(this._storage);

  Future<void> patchUser(
    UserDto user,
    String? email,
  ) async {
    await _storage.insert(StorageKeyConstant.user, jsonEncode(user.toJson()));
    await _storage.insert(StorageKeyConstant.appNotInitial, true);
    await _storage.insert(StorageKeyConstant.lastUserEmail, email);
  }

  Future<UserDto> getUser() async {
    var data = await _storage.get(StorageKeyConstant.user);
    if (data is String && data.isNotEmpty) {
      return UserDto.fromJson(jsonDecode(data));
    } else {
      throw NotFoundException(StackTrace.current);
    }
  }

  Future<String> getToken() async {
    var token = await _storage.get(StorageKeyConstant.token);
    return token;
  }

  Future<bool> checkIfAppIsInitial() async {
    var isNotInitial =
        await _storage.get<bool?>(StorageKeyConstant.appNotInitial);
    return !(isNotInitial ?? false);
  }

  Future<void> removeUserData() async {
    final userEmail = await getUserEmail();
    await _storage.remove(StorageKeyConstant.user);
    await _storage.insert(StorageKeyConstant.appNotInitial, true);
    await _storage.insert(StorageKeyConstant.lastUserEmail, userEmail);
  }

  Future<String?> getUserEmail() async {
    var userEmail = await _storage.get(StorageKeyConstant.lastUserEmail);
    return userEmail;
  }
}
