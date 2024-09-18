part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignInEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInEvent.submit() = _Submit;
}
