import 'package:astronacci_app/app/domain/auth/auth_failure/auth_failure.dart';
import 'package:astronacci_app/app/domain/auth/auth_form.dart/auth_form.dart';
import 'package:astronacci_app/app/domain/auth/auth_success/auth_success.dart';
import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/app/domain/failures/failures.dart';
import 'package:astronacci_app/app/domain/user/user.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class IAuthRepository {
  Future<Either<AppFailure<AuthFailure>, String>> getToken();
  Future<Either<AppFailure<AuthFailure>, String>> getLastUserEmail();
  Future<Either<AppFailure<AuthFailure>, User>> getUserFromLocalStorage();
  Future<Either<AppFailure<AuthFailure>, User>> checkIntialStatusAndGetUser();
  Future<Either<AppFailure<AuthFailure>, User>> getUser();
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> signIn(SignInForm form);
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> register(
      RegisterForm form);
  Future<Either<AppFailure<AuthFailure>, AuthSuccess>> updateProfile(
      ProfileForm form);
  Future<Either<AppFailure<AuthFailure>, List<DropdownText>>> getProvinceList();
  Future<Either<AppFailure<AuthFailure>, List<User>>> getUserList({
    String? query,
    int? limit = 10,
    int? offset = 0,
    String? lastName,
  });
  Future<Either<AppFailure<AuthFailure>, String?>> takePicture(
      ImageSource imageSource);
  Future<void> signOut();
}
