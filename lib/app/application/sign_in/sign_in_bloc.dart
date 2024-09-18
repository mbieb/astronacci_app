import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthRepository _repository;
  late TextEditingController emailController;
  SignInBloc(this._repository) : super(SignInState.init()) {
    emailController = TextEditingController()
      ..addListener(() {
        add(_EmailChanged(emailController.text));
      });
    on<SignInEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    await event.map(
      started: (event) async {
        late String? userEmail;
        final lastUserEmail = await _repository.getLastUserEmail();
        lastUserEmail.fold((l) => userEmail = null, (r) => userEmail = r);
        emailController.text = userEmail ?? '';
      },
      emailChanged: (event) {
        emit(state.unmodified.copyWith.form(email: EmailAddress(event.email)));
      },
      passwordChanged: (event) {
        emit(state.unmodified.copyWith
            .form(password: SignInPassword(event.password)));
      },
      submit: (event) async {
        emit(state.loading);
        Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
            failureOrSuccessOption = none();
        if (state.form.failureOption.isNone()) {
          final response = await _repository.signIn(state.form);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
    );
  }
}
