import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    String? id,
    String? name,
    String? email,
    String? firebaseToken,
    String? birthDate,
    String? gender,
    String? genderId,
    String? province,
    String? provinceId,
    String? imgUrl,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  User toDomain() => User(
        id: id,
        name: name,
        email: email,
        firebaseToken: firebaseToken,
        birthDate: birthDate,
        gender: gender,
        genderId: genderId,
        province: province,
        provinceId: provinceId,
        imgUrl: imgUrl,
      );
}
