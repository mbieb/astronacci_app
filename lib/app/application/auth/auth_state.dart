part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState({
    required Option<User> userOption,
    required Option<List<User>> userListOption,
    required Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
        failureOrSuccessOption,
    required bool isLoading,
    required bool isFetchItemLoading,
    required Option<String> lastName,
    required bool isLastPage,
    required bool isPhotoFromNetwork,
    required ProfileForm profileForm,
    required Option<List<DropdownText>> provinceListOption,
  }) = _AuthState;

  factory AuthState.init() => AuthState(
        userOption: none(),
        userListOption: none(),
        failureOrSuccessOption: none(),
        isLoading: false,
        isFetchItemLoading: false,
        isPhotoFromNetwork: true,
        profileForm: ProfileForm.init(),
        provinceListOption: none(),
        lastName: none(),
        isLastPage: false,
      );

  AuthState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
        isFetchItemLoading: false,
      );

  AuthState get loading => unmodified.copyWith(isLoading: true);
  AuthState get fetchItemLoading =>
      unmodified.copyWith(isFetchItemLoading: true);

  User? get user => userOption.fold(
        () => null,
        (user) => user,
      );

  List<User> get userList => userListOption.fold(
        () => [],
        (val) => val,
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
