import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_objects.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;
  late TextEditingController fullNameController;
  AuthBloc(this._authRepository) : super(AuthState.init()) {
    fullNameController = TextEditingController()
      ..addListener(() {
        add(_FullNameChanged(fullNameController.text));
      });
    on<AuthEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    AuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    await event.map(
      started: (event) async {
        emit(state.loading);
        var user = state.user;
        final failureOrProvinceList = await _authRepository.getProvinceList();
        late List<DropdownText> provinceList;

        failureOrProvinceList.fold((l) => null, (data) {
          provinceList = data;
        });

        fullNameController.text = user?.name ?? '';

        emit(
          state.unmodified.copyWith(
            isPhotoFromNetwork: true,
            provinceListOption: some(provinceList),
            profileForm: user!.toProfileForm(
              genderList: CommonUtils().getGendeRList(),
              provinceList: provinceList,
            ),
          ),
        );
      },
      patch: (event) {
        if (event.user != null) {
          emit(state.unmodified.copyWith(
            userOption: some(event.user!),
          ));
        }
      },
      fullNameChanged: (event) {
        emit(
          state.unmodified.copyWith
              .profileForm(fullName: FullName(event.fullName)),
        );
      },
      genderChanged: (event) {
        emit(
          state.unmodified.copyWith.profileForm(gender: some(event.gender)),
        );
      },
      birthDateChanged: (event) {
        emit(
          state.unmodified.copyWith
              .profileForm(birthDate: some(event.birthDate)),
        );
      },
      provinceChanged: (event) {
        emit(
          state.unmodified.copyWith.profileForm(province: some(event.province)),
        );
      },
      takePicture: (event) async {
        final failureOrPicture =
            await _authRepository.takePicture(event.imageSource);

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
              isPhotoFromNetwork: false,
              profileForm:
                  state.profileForm.copyWith(imageUrl: optionOf(picture)),
              failureOrSuccessOption:
                  some(right(const AuthSuccess.takePhotoSuccess())),
            ),
          ),
        );
      },
      updateProfile: (event) async {
        emit(state.loading);
        Option<Either<AppFailure<AuthFailure>, AuthSuccess>>
            failureOrSuccessOption = none();
        if (state.profileForm.failureOption.isNone()) {
          final response =
              await _authRepository.updateProfile(state.profileForm);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
      signOut: (event) async {
        await _authRepository.signOut();
      },
      getUserList: (event) async {
        emit(state.fetchItemLoading);

        final failureOrUserList = await _authRepository.getUserList();
        late List<User> userList;

        failureOrUserList.fold((l) => null, (data) {
          userList = data;
        });

        String? lastName;

        if (userList.isNotEmpty) {
          lastName = userList[userList.length - 1].name;
        }

        emit(
          state.unmodified.copyWith(
            userListOption: some(userList),
            lastName: optionOf(lastName),
            isLastPage: userList.isEmpty,
          ),
        );
      },
      nextPage: (event) async {
        final failureOrUserList = await _authRepository.getUserList(
          lastName: state.lastName.toNullable(),
        );

        final list = state.userList;

        return failureOrUserList.fold(
          (l) {
            emit(state.unmodified.copyWith(
              failureOrSuccessOption: some(
                left(l),
              ),
            ));
          },
          (data) {
            String? lastName;

            if (data.isNotEmpty) {
              lastName = data[data.length - 1].name;
            }
            list.addAll(data);
            emit(
              state.unmodified.copyWith(
                userListOption: some(list),
                lastName: optionOf(lastName),
                isLastPage: data.isEmpty,
              ),
            );
          },
        );
      },
    );
  }
}
