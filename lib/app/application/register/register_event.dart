part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      _PasswordChanged;
  const factory RegisterEvent.fullNameChanged(String fullName) =
      _FullNameChanged;
  const factory RegisterEvent.genderChanged(DropdownText gender) =
      _GenderChanged;
  const factory RegisterEvent.birthDateChanged(DateTime birthDate) =
      _BirthDateChanged;
  const factory RegisterEvent.provinceChanged(DropdownText province) =
      _ProvinceChanged;
  const factory RegisterEvent.takePicture(
    ImageSource imageSource,
  ) = _TakePicture;
  const factory RegisterEvent.submit() = _Submit;
}
