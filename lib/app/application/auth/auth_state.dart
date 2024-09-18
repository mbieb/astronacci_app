part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    required Option<User> userOption,
    required Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
        failureOrSuccessOption,
    required bool isLoading,
    required bool isPhotoFromNetwork,
    required ProfileForm profileForm,
    required Option<List<DropdownText>> provinceListOption,
  }) = _AuthState;

  factory AuthState.init() => AuthState(
        userOption: none(),
        failureOrSuccessOption: none(),
        isLoading: false,
        isPhotoFromNetwork: true,
        profileForm: ProfileForm.init(),
        provinceListOption: none(),
      );

  AuthState get unmodified =>
      copyWith(isLoading: false, failureOrSuccessOption: none());

  AuthState get loading => unmodified.copyWith(isLoading: true);
  User? get user => userOption.fold(
        () => null,
        (user) => user,
      );

  bool get enableButton => profileForm.isValid;

  DropdownText? get genderFormValue => profileForm.gender.fold(
        () => null,
        (val) => val,
      );

  String? get birthDateFieldValueToString =>
      CommonUtils.dateFormat('dd-MM-yyyy', profileForm.birthDate.toNullable());

  DateTime? get birthDateFieldValue => profileForm.birthDate.toNullable();

  List<DropdownText> get provinceList => provinceListOption.fold(
        () => [],
        (list) => list,
      );

  DropdownText? get provinceFormValue => profileForm.province.fold(
        () => null,
        (val) => val,
      );

  String? get imageUrlFormValue =>
      profileForm.imageUrl.fold(() => null, (val) => val);
}
