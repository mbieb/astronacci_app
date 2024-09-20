part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();
  const factory ForgotPasswordState({
    required ForgotPasswordForm form,
    required bool isLoading,
    required Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
        failureOrSuccessOption,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.init() => ForgotPasswordState(
        form: ForgotPasswordForm.init(),
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  ForgotPasswordState get unmodified => copyWith(
        failureOrSuccessOption: none(),
        isLoading: false,
      );
  ForgotPasswordState get loading => unmodified.copyWith(isLoading: true);

  bool get enableSignInButton {
    return emailFieldErrorOption.isNone();
  }

  Option<AppFailure<AuthFailure>> get submitFailureOption =>
      failureOrSuccessOption.fold(
          () => none(), (a) => a.fold((l) => some(l), (r) => none()));

  Option<Unit> get emailFieldErrorOption {
    return form.email.failureOrUnit.fold(
      (failure) => some(unit),
      (r) => submitFailureOption.fold(
        () => none(),
        (failure) => failure.maybeWhen(
          orElse: () => none(),
          handled: (handled) => handled.maybeWhen(
            orElse: () => none(),
            error: (_) => none(),
          ),
        ),
      ),
    );
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
}
