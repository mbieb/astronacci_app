part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.started() = _Started;
  const factory ForgotPasswordEvent.emailChanged(String email) = _EmailChanged;
  const factory ForgotPasswordEvent.submit() = _Submit;
}
