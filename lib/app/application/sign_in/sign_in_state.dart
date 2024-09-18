part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();
  const factory SignInState({
    required SignInForm form,
    required bool isLoading,
    required Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
        failureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.init() => SignInState(
        form: SignInForm.init(),
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  SignInState get unmodified => copyWith(
        failureOrSuccessOption: none(),
        isLoading: false,
      );
  SignInState get loading => unmodified.copyWith(isLoading: true);

  bool get enableSignInButton {
    return passwordFieldErrorOption.isNone() && emailFieldErrorOption.isNone();
  }

  Option<AppFailure<AuthFailure>> get submitFailureOption =>
      failureOrSuccessOption.fold(
          () => none(), (a) => a.fold((l) => some(l), (r) => none()));

  Option<Unit> get passwordFieldErrorOption {
    return form.password.failureOrUnit.fold(
      (failure) => some(unit),
      (_) => submitFailureOption.fold(
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
}
