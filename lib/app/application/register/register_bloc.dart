import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthRepository _repository;
  RegisterBloc(this._repository) : super(RegisterState.init()) {
    on<RegisterEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    RegisterEvent event,
    Emitter<RegisterState> emit,
  ) async {
    await event.map(
      started: (event) async {
        emit(state.loading);
        final failureOrProvinceList = await _repository.getProvinceList();
        return failureOrProvinceList.fold(
          (failure) => emit(
            state.unmodified.copyWith(
              failureOrSuccessOption: some(
                left(failure),
              ),
            ),
          ),
          (provinceList) => emit(
            state.unmodified.copyWith(
              provinceListOption: some(provinceList),
            ),
          ),
        );
      },
      emailChanged: (event) {
        emit(
          state.unmodified.copyWith.form(email: EmailAddress(event.email)),
        );
      },
      passwordChanged: (event) {
        emit(
          state.unmodified.copyWith
              .form(password: RegisterPassword(event.password)),
        );
      },
      fullNameChanged: (event) {
        emit(
          state.unmodified.copyWith.form(fullName: FullName(event.fullName)),
        );
      },
      genderChanged: (event) {
        emit(
          state.unmodified.copyWith.form(gender: some(event.gender)),
        );
      },
      birthDateChanged: (event) {
        emit(
          state.unmodified.copyWith.form(birthDate: some(event.birthDate)),
        );
      },
      provinceChanged: (event) {
        emit(
          state.unmodified.copyWith.form(province: some(event.province)),
        );
      },
      takePicture: (event) async {
        final failureOrPicture =
            await _repository.takePicture(event.imageSource);

        return failureOrPicture.fold(
          (failure) => emit(
            state.unmodified.copyWith(
              failureOrSuccessOption: some(
                left(failure),
              ),
            ),
          ),
          (picture) => emit(
            state.unmodified.copyWith(
              form: state.form.copyWith(imageUrl: optionOf(picture)),
              failureOrSuccessOption:
                  some(right(const AuthSuccess.takePhotoSuccess())),
            ),
          ),
        );
      },
      submit: (event) async {
        emit(state.loading);
        Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
            failureOrSuccessOption = none();
        if (state.form.failureOption.isNone()) {
          final response = await _repository.register(state.form);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
    );
  }
}
