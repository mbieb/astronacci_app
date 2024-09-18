// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      firebaseToken: json['firebaseToken'] as String?,
      birthDate: json['birthDate'] as String?,
      gender: json['gender'] as String?,
      genderId: json['genderId'] as String?,
      province: json['province'] as String?,
      provinceId: json['provinceId'] as String?,
      imgUrl: json['imgUrl'] as String?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'firebaseToken': instance.firebaseToken,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'genderId': instance.genderId,
      'province': instance.province,
      'provinceId': instance.provinceId,
      'imgUrl': instance.imgUrl,
    };
