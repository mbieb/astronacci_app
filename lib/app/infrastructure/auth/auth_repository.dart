import 'package:astronacci_app/app/infrastructure/exception/exception.dart';
import 'package:dartz/dartz.dart';
import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/auth/i_auth_repository.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:astronacci_app/app/domain/utils/common_util.dart';
import 'package:astronacci_app/app/infrastructure/auth/auth_local_data_source.dart';
import 'package:astronacci_app/app/infrastructure/auth/auth_remote_data_source.dart';
import 'package:astronacci_app/app/infrastructure/auth/dto/user_dto.dart';
import 'package:image_picker_platform_interface/src/types/image_source.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepository(
    this._authLocalDataSource,
    this._authRemoteDataSource,
  );

  @override
  Future<Either<AppFailure<AuthFailure>, User>>
      checkIntialStatusAndGetUser() async {
    try {
      bool isIntial = await _authLocalDataSource.checkIfAppIsInitial();
      if (isIntial) {
        return left(handledAppFailure(const AuthFailure.initialOpenApp()));
      }
      return getUser();
    } on NotFoundException {
      return left(const AppFailure.unauthorized());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, String>> getLastUserEmail() async {
    try {
      String? userEmail = await _authLocalDataSource.getUserEmail();
      return right(userEmail ?? '');
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, String>> getToken() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure<AuthFailure>, User>> getUser() async {
    try {
      UserDto user = await _authLocalDataSource.getUser();

      return right(user.toDomain());
    } on NotFoundException {
      return left(const AppFailure.unauthorized());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, User>>
      getUserFromLocalStorage() async {
    var userDto = await _authLocalDataSource.getUser();

    return right(userDto.toDomain());
  }

  @override
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> register(
      RegisterForm form) async {
    try {
      final userDto = await _authRemoteDataSource.register(form: form);

      await _authLocalDataSource.patchUser(userDto, form.email.value);

      return right(AuthSuccess.success(userDto.toDomain()));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> signIn(
      SignInForm form) async {
    try {
      final userDto = await _authRemoteDataSource.signIn(form: form);

      await _authLocalDataSource.patchUser(userDto, form.email.value);

      return right(AuthSuccess.success(userDto.toDomain()));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _authLocalDataSource.removeUserData();
    } catch (_) {}
  }

  @override
  Future<Either<AppFailure<AuthFailure>, List<DropdownText>>>
      getProvinceList() async {
    try {
      final provinceDto = await _authRemoteDataSource.getProvinceList();
      return right(provinceDto.map((e) => e.toDomain()).toList());
    } catch (e, _) {
      return right(CommonUtils().getDummyProvince());
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, String?>> takePicture(
      ImageSource imageSource) async {
    try {
      final imagePath =
          await _authRemoteDataSource.takePicture(imageSource: imageSource);
      return right(imagePath);
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> updateProfile(
      ProfileForm form) async {
    try {
      UserDto user = await _authLocalDataSource.getUser();
      final userDto = await _authRemoteDataSource.updateProfile(
        form: form,
        userId: user.toDomain().id ?? '',
      );

      await _authLocalDataSource.patchUser(userDto, form.email.value);

      return right(AuthSuccess.success(userDto.toDomain()));
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
