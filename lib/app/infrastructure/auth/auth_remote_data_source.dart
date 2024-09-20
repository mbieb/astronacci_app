import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/infrastructure/api_helper/api_helper.dart';
import 'package:astronacci_app/app/infrastructure/api_helper/api_path.dart';
import 'package:astronacci_app/app/infrastructure/auth/dto/province_dto.dart';
import 'package:astronacci_app/app/infrastructure/auth/dto/user_dto.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class AuthRemoteDataSource {
  final ApiHelper _helper;
  final ImagePicker _imagePicker;
  AuthRemoteDataSource(
    this._helper,
    this._imagePicker,
  );

  Future<UserDto> signIn({
    required SignInForm form,
  }) async {
    final auth = FirebaseAuth.instance;
    var result = await auth.signInWithEmailAndPassword(
      email: form.email.value,
      password: form.password.value,
    );

    final user = await FirebaseFirestore.instance
        .collection('users')
        .doc(result.user!.uid)
        .get();

    final userData = user.data();

    return UserDto(
      id: result.user!.uid,
      name: userData!['fullName'] ?? '',
      email: userData['email'] ?? '',
      imgUrl: userData['imageUrl'] ?? '',
      gender: userData['gender'] ?? '',
      genderId: userData['genderId'] ?? '',
      birthDate: userData['birthDate'] ?? '',
      province: userData['province'] ?? '',
      provinceId: userData['provinceId'] ?? '',
    );
  }

  Future<UserDto> register({
    required RegisterForm form,
  }) async {
    final auth = FirebaseAuth.instance;

    //register user to firebase auth
    var result = await auth.createUserWithEmailAndPassword(
      email: form.email.value,
      password: form.password.value,
    );

    final ref = FirebaseStorage.instance.ref().child('user_image').child(
          '${result.user!.uid}.jpg',
        );

    //upload image to firebase storage
    await ref.putFile(File(form.imageUrlValue));
    final imageUrl = await ref.getDownloadURL();

    final userId = result.user!.uid;
    final fullName = form.fullName.value;
    final email = form.email.value;
    final gender = form.gender.toNullable()!.text;
    final genderId = form.gender.toNullable()!.id;
    final birthDate =
        DateFormat('dd-MM-yyyy').format(form.birthDate.toNullable()!);
    final province = form.province.toNullable()!.text;
    final provinceId = form.province.toNullable()!.id;

    //store user to firebase firestore
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'fullName': fullName,
      'email': email,
      'imageUrl': imageUrl,
      'gender': gender,
      'genderId': genderId,
      'birthDate': birthDate,
      'province': province,
      'provinceId': provinceId,
    });

    return UserDto(
      id: userId,
      name: fullName,
      email: email,
      imgUrl: imageUrl,
      gender: gender,
      genderId: genderId,
      birthDate: birthDate,
      province: province,
      provinceId: provinceId,
    );
  }

  Future<UserDto> updateProfile({
    required ProfileForm form,
    required String userId,
  }) async {
    final ref = FirebaseStorage.instance.ref().child('user_image').child(
          '$userId.jpg',
        );

    final fullName = form.fullName.value;
    final gender = form.gender.toNullable()!.text;
    final genderId = form.gender.toNullable()!.id;
    final birthDate =
        DateFormat('dd-MM-yyyy').format(form.birthDate.toNullable()!);
    final province = form.province.toNullable()!.text;
    final provinceId = form.province.toNullable()!.id;

    //store user to firebase firestore
    await FirebaseFirestore.instance.collection('users').doc(userId).update({
      'fullName': fullName,
      'gender': gender,
      'genderId': genderId,
      'birthDate': birthDate,
      'province': province,
      'provinceId': provinceId,
    });

    String? imageUrl;
    if (!form.imageUrlValue.contains('firebasestorage')) {
      //upload image to firebase storage
      await ref.putFile(File(form.imageUrlValue));
      imageUrl = await ref.getDownloadURL();
      await FirebaseFirestore.instance.collection('users').doc(userId).update({
        'imageUrl': imageUrl,
      });
    }

    return UserDto(
      id: userId,
      name: fullName,
      email: form.email.value,
      imgUrl: imageUrl ?? form.imageUrlValue,
      gender: gender,
      genderId: genderId,
      birthDate: birthDate,
      province: province,
      provinceId: provinceId,
    );
  }

  Future<List<ProvinceDto>> getProvinceList() async {
    var response = await _helper.get(
      path: ApiPath.province,
    );

    return (response as List).map((e) => ProvinceDto.fromJson(e)).toList();
  }

  Future<String?> takePicture({
    required ImageSource imageSource,
  }) async {
    XFile? pickedImage =
        await _imagePicker.pickImage(source: imageSource, imageQuality: 50);

    if (pickedImage == null) {
      return null;
    } else {
      // Memotong gambar
      final croppedImage = await ImageCropper().cropImage(
        sourcePath: pickedImage.path,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            aspectRatioPresets: [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
            ],
          ),
          IOSUiSettings(
            title: 'Cropper',
            aspectRatioPresets: [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
            ],
          ),
        ],
      );

      if (croppedImage != null) {
        return croppedImage.path;
      }
      return null;
    }
  }

  Future<List<UserDto>> getUserList({
    String? query,
    int? limit = 10,
    int? offset = 0,
    String? lastName,
  }) async {
    var data =
        FirebaseFirestore.instance.collection('users').orderBy('fullName');

    if (lastName != null) {
      data = data.startAfter([lastName]);
    }

    if (query == null || query.isEmpty) {
      data = data.limit(5);
    }

    final snapshot = await data.get();
    List<UserDto> userList = snapshot.docs
        .map((doc) => UserDto.fromFirestore(doc)) // Convert to UserDto

        .toList();

    if (query != null && query.isNotEmpty) {
      userList = userList
          .where((user) =>
              (user.name ?? '').toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    return userList;
  }

  Future forgotPassword({
    required String email,
  }) async {
    final auth = FirebaseAuth.instance;
    await auth.sendPasswordResetEmail(
      email: email,
    );
  }
}
