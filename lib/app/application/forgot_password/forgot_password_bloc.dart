import 'dart:async';

import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthRepository _repository;
  ForgotPasswordBloc(this._repository) : super(ForgotPasswordState.init()) {
    on<ForgotPasswordEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ForgotPasswordEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await event.map(
      started: (event) async {},
      emailChanged: (event) {
        emit(state.unmodified.copyWith.form(email: EmailAddress(event.email)));
      },
      submit: (event) async {
        emit(state.loading);
        Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
            failureOrSuccessOption = none();
        if (state.form.failureOption.isNone()) {
          final response =
              await _repository.forgotPassword(state.form.email.value);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
    );
  }
}
