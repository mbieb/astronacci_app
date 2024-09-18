part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.patch({
    User? user,
  }) = _Patch;
  const factory AuthEvent.fullNameChanged(String fullName) = _FullNameChanged;
  const factory AuthEvent.genderChanged(DropdownText gender) = _GenderChanged;
  const factory AuthEvent.birthDateChanged(DateTime birthDate) =
      _BirthDateChanged;
  const factory AuthEvent.provinceChanged(DropdownText province) =
      _ProvinceChanged;
  const factory AuthEvent.takePicture(
    ImageSource imageSource,
  ) = _TakePicture;
  const factory AuthEvent.updateProfile() = _UpdateProfile;
  const factory AuthEvent.signOut() = _SignOut;
}
