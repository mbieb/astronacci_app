import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureStorage {
  static const String boxName = 'APP-BOX';
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  Box? _box;

  Future<T?> get<T>(String key) async {
    var box = await _getBox;
    var data = box.get(key);
    return data;
  }

  // USE THIS TO FETCH MAP DATA TYPE
  Future<Map<String, dynamic>?> getMap(String key) async {
    var box = await _getBox;
    var data = box.get(key);
    if (data != null) {
      return Map<String, dynamic>.from(data);
    }
    return null;
  }

  Future<void> insert(String key, dynamic value) async {
    var box = await _getBox;
    await box.put(key, value);
  }

  Future<void> remove(String key) async {
    var box = await _getBox;
    await box.delete(key);
  }

  Future<void> removeAll() async {
    var box = await _getBox;
    await box.deleteFromDisk();
  }

  Future<Box> get _getBox async {
    if (_box == null || !(_box?.isOpen ?? false)) {
      List<int>? hiveKey = await _hiveKeys;
      _box = await Hive.openBox(
        boxName,
        encryptionCipher: HiveAesCipher(hiveKey),
      );
    }
    return _box!;
  }

  Future<List<int>> get _hiveKeys async {
    String? stringKey = await _secureStorage.read(key: 'boxKey');
    List<int> hiveKey;
    if (stringKey != null) {
      hiveKey = stringKey.codeUnits;
    } else {
      hiveKey = Hive.generateSecureKey();
      Uint8List bytes = Uint8List.fromList(hiveKey);
      stringKey = String.fromCharCodes(bytes);
      await _secureStorage.write(key: 'boxKey', value: stringKey);
    }
    return hiveKey;
  }
}
