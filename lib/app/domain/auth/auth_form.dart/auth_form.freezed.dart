// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterForm {
  FullName get fullName => throw _privateConstructorUsedError;
  RegisterPassword get password => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Option<DropdownText> get gender => throw _privateConstructorUsedError;
  Option<DropdownText> get province => throw _privateConstructorUsedError;
  Option<DateTime> get birthDate => throw _privateConstructorUsedError;
  Option<String> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormCopyWith<RegisterForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormCopyWith<$Res> {
  factory $RegisterFormCopyWith(
          RegisterForm value, $Res Function(RegisterForm) then) =
      _$RegisterFormCopyWithImpl<$Res, RegisterForm>;
  @useResult
  $Res call(
      {FullName fullName,
      RegisterPassword password,
      EmailAddress email,
      Option<DropdownText> gender,
      Option<DropdownText> province,
      Option<DateTime> birthDate,
      Option<String> imageUrl});
}

/// @nodoc
class _$RegisterFormCopyWithImpl<$Res, $Val extends RegisterForm>
    implements $RegisterFormCopyWith<$Res> {
  _$RegisterFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? password = null,
    Object? email = null,
    Object? gender = null,
    Object? province = null,
    Object? birthDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterFormImplCopyWith<$Res>
    implements $RegisterFormCopyWith<$Res> {
  factory _$$RegisterFormImplCopyWith(
          _$RegisterFormImpl value, $Res Function(_$RegisterFormImpl) then) =
      __$$RegisterFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FullName fullName,
      RegisterPassword password,
      EmailAddress email,
      Option<DropdownText> gender,
      Option<DropdownText> province,
      Option<DateTime> birthDate,
      Option<String> imageUrl});
}

/// @nodoc
class __$$RegisterFormImplCopyWithImpl<$Res>
    extends _$RegisterFormCopyWithImpl<$Res, _$RegisterFormImpl>
    implements _$$RegisterFormImplCopyWith<$Res> {
  __$$RegisterFormImplCopyWithImpl(
      _$RegisterFormImpl _value, $Res Function(_$RegisterFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? password = null,
    Object? email = null,
    Object? gender = null,
    Object? province = null,
    Object? birthDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_$RegisterFormImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegisterPassword,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$RegisterFormImpl extends _RegisterForm {
  const _$RegisterFormImpl(
      {required this.fullName,
      required this.password,
      required this.email,
      required this.gender,
      required this.province,
      required this.birthDate,
      required this.imageUrl})
      : super._();

  @override
  final FullName fullName;
  @override
  final RegisterPassword password;
  @override
  final EmailAddress email;
  @override
  final Option<DropdownText> gender;
  @override
  final Option<DropdownText> province;
  @override
  final Option<DateTime> birthDate;
  @override
  final Option<String> imageUrl;

  @override
  String toString() {
    return 'RegisterForm(fullName: $fullName, password: $password, email: $email, gender: $gender, province: $province, birthDate: $birthDate, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterFormImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName, password, email,
      gender, province, birthDate, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterFormImplCopyWith<_$RegisterFormImpl> get copyWith =>
      __$$RegisterFormImplCopyWithImpl<_$RegisterFormImpl>(this, _$identity);
}

abstract class _RegisterForm extends RegisterForm {
  const factory _RegisterForm(
      {required final FullName fullName,
      required final RegisterPassword password,
      required final EmailAddress email,
      required final Option<DropdownText> gender,
      required final Option<DropdownText> province,
      required final Option<DateTime> birthDate,
      required final Option<String> imageUrl}) = _$RegisterFormImpl;
  const _RegisterForm._() : super._();

  @override
  FullName get fullName;
  @override
  RegisterPassword get password;
  @override
  EmailAddress get email;
  @override
  Option<DropdownText> get gender;
  @override
  Option<DropdownText> get province;
  @override
  Option<DateTime> get birthDate;
  @override
  Option<String> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$RegisterFormImplCopyWith<_$RegisterFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInForm {
  SignInPassword get password => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormCopyWith<SignInForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormCopyWith<$Res> {
  factory $SignInFormCopyWith(
          SignInForm value, $Res Function(SignInForm) then) =
      _$SignInFormCopyWithImpl<$Res, SignInForm>;
  @useResult
  $Res call({SignInPassword password, EmailAddress email});
}

/// @nodoc
class _$SignInFormCopyWithImpl<$Res, $Val extends SignInForm>
    implements $SignInFormCopyWith<$Res> {
  _$SignInFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SignInPassword,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInFormImplCopyWith<$Res>
    implements $SignInFormCopyWith<$Res> {
  factory _$$SignInFormImplCopyWith(
          _$SignInFormImpl value, $Res Function(_$SignInFormImpl) then) =
      __$$SignInFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignInPassword password, EmailAddress email});
}

/// @nodoc
class __$$SignInFormImplCopyWithImpl<$Res>
    extends _$SignInFormCopyWithImpl<$Res, _$SignInFormImpl>
    implements _$$SignInFormImplCopyWith<$Res> {
  __$$SignInFormImplCopyWithImpl(
      _$SignInFormImpl _value, $Res Function(_$SignInFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$SignInFormImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as SignInPassword,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$SignInFormImpl extends _SignInForm {
  const _$SignInFormImpl({required this.password, required this.email})
      : super._();

  @override
  final SignInPassword password;
  @override
  final EmailAddress email;

  @override
  String toString() {
    return 'SignInForm(password: $password, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormImplCopyWith<_$SignInFormImpl> get copyWith =>
      __$$SignInFormImplCopyWithImpl<_$SignInFormImpl>(this, _$identity);
}

abstract class _SignInForm extends SignInForm {
  const factory _SignInForm(
      {required final SignInPassword password,
      required final EmailAddress email}) = _$SignInFormImpl;
  const _SignInForm._() : super._();

  @override
  SignInPassword get password;
  @override
  EmailAddress get email;
  @override
  @JsonKey(ignore: true)
  _$$SignInFormImplCopyWith<_$SignInFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileForm {
  FullName get fullName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Option<DropdownText> get gender => throw _privateConstructorUsedError;
  Option<DropdownText> get province => throw _privateConstructorUsedError;
  Option<DateTime> get birthDate => throw _privateConstructorUsedError;
  Option<String> get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormCopyWith<ProfileForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormCopyWith<$Res> {
  factory $ProfileFormCopyWith(
          ProfileForm value, $Res Function(ProfileForm) then) =
      _$ProfileFormCopyWithImpl<$Res, ProfileForm>;
  @useResult
  $Res call(
      {FullName fullName,
      EmailAddress email,
      Option<DropdownText> gender,
      Option<DropdownText> province,
      Option<DateTime> birthDate,
      Option<String> imageUrl});
}

/// @nodoc
class _$ProfileFormCopyWithImpl<$Res, $Val extends ProfileForm>
    implements $ProfileFormCopyWith<$Res> {
  _$ProfileFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? gender = null,
    Object? province = null,
    Object? birthDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileFormImplCopyWith<$Res>
    implements $ProfileFormCopyWith<$Res> {
  factory _$$ProfileFormImplCopyWith(
          _$ProfileFormImpl value, $Res Function(_$ProfileFormImpl) then) =
      __$$ProfileFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FullName fullName,
      EmailAddress email,
      Option<DropdownText> gender,
      Option<DropdownText> province,
      Option<DateTime> birthDate,
      Option<String> imageUrl});
}

/// @nodoc
class __$$ProfileFormImplCopyWithImpl<$Res>
    extends _$ProfileFormCopyWithImpl<$Res, _$ProfileFormImpl>
    implements _$$ProfileFormImplCopyWith<$Res> {
  __$$ProfileFormImplCopyWithImpl(
      _$ProfileFormImpl _value, $Res Function(_$ProfileFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? email = null,
    Object? gender = null,
    Object? province = null,
    Object? birthDate = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ProfileFormImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as Option<DropdownText>,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$ProfileFormImpl extends _ProfileForm {
  const _$ProfileFormImpl(
      {required this.fullName,
      required this.email,
      required this.gender,
      required this.province,
      required this.birthDate,
      required this.imageUrl})
      : super._();

  @override
  final FullName fullName;
  @override
  final EmailAddress email;
  @override
  final Option<DropdownText> gender;
  @override
  final Option<DropdownText> province;
  @override
  final Option<DateTime> birthDate;
  @override
  final Option<String> imageUrl;

  @override
  String toString() {
    return 'ProfileForm(fullName: $fullName, email: $email, gender: $gender, province: $province, birthDate: $birthDate, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFormImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, email, gender, province, birthDate, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFormImplCopyWith<_$ProfileFormImpl> get copyWith =>
      __$$ProfileFormImplCopyWithImpl<_$ProfileFormImpl>(this, _$identity);
}

abstract class _ProfileForm extends ProfileForm {
  const factory _ProfileForm(
      {required final FullName fullName,
      required final EmailAddress email,
      required final Option<DropdownText> gender,
      required final Option<DropdownText> province,
      required final Option<DateTime> birthDate,
      required final Option<String> imageUrl}) = _$ProfileFormImpl;
  const _ProfileForm._() : super._();

  @override
  FullName get fullName;
  @override
  EmailAddress get email;
  @override
  Option<DropdownText> get gender;
  @override
  Option<DropdownText> get province;
  @override
  Option<DateTime> get birthDate;
  @override
  Option<String> get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ProfileFormImplCopyWith<_$ProfileFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
