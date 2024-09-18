import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
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
  }) = _User;

  ProfileForm toProfileForm({
    required List<DropdownText> genderList,
    required List<DropdownText> provinceList,
  }) {
    DropdownText gender = genderList.singleWhere((item) => item.id == genderId);
    DropdownText? province;
    if (provinceId != null) {
      final indexProvince =
          provinceList.indexWhere((element) => element.id == provinceId);
      if (indexProvince >= 0) {
        province = provinceList.singleWhere((item) => item.id == provinceId);
      }
    }

    return ProfileForm(
      fullName: FullName(name ?? ''),
      email: EmailAddress(email ?? ''),
      gender: optionOf(gender),
      birthDate: optionOf(CommonUtils.stringToDateFormated(birthDate)),
      imageUrl: optionOf(imgUrl),
      province: optionOf(province),
    );
  }
}
