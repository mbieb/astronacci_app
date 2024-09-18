part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();
  const factory RegisterState({
    required RegisterForm form,
    required Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
        failureOrSuccessOption,
    required bool isLoading,
    required Option<List<DropdownText>> provinceListOption,
  }) = _RegisterState;

  factory RegisterState.init() => RegisterState(
        form: RegisterForm.init(),
        failureOrSuccessOption: none(),
        provinceListOption: none(),
        isLoading: false,
      );

  RegisterState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );
  RegisterState get loading => unmodified.copyWith(isLoading: true);

  bool get enableSignInButton => form.isValid;

  DropdownText? get genderFormValue => form.gender.fold(
        () => null,
        (val) => val,
      );

  String? get birthDateFieldValueToString =>
      CommonUtils.dateFormat('dd-MM-yyyy', form.birthDate.toNullable());

  DateTime? get birthDateFieldValue => form.birthDate.toNullable();

  String? get passwordFieldErrorToString {
    return form.password.failureOrUnit.fold(
        (failure) => failure.maybeMap(
              empty: (_) => null,
              orElse: () => I10n.current.loginPasswordWrong,
            ), (_) {
      return null;
    });
  }

  String? get emailFieldErrorToString {
    return form.email.failureOrUnit.fold(
        (failure) => failure.maybeMap(
              empty: (_) => null,
              orElse: () => I10n.current.loginEmailWrong,
            ), (_) {
      return null;
    });
  }

  List<DropdownText> get provinceList => provinceListOption.fold(
        () => [],
        (list) => list,
      );

  DropdownText? get provinceFormValue => form.province.fold(
        () => null,
        (val) => val,
      );

  String? get imageUrlFormValue => form.imageUrl.fold(() => null, (val) => val);
}
