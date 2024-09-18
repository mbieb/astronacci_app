// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<T, $Res> {
  factory $AppFailureCopyWith(
          AppFailure<T> value, $Res Function(AppFailure<T>) then) =
      _$AppFailureCopyWithImpl<T, $Res, AppFailure<T>>;
}

/// @nodoc
class _$AppFailureCopyWithImpl<T, $Res, $Val extends AppFailure<T>>
    implements $AppFailureCopyWith<T, $Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$AppFailureCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> extends _Error<T> {
  const _$ErrorImpl(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'AppFailure<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> extends AppFailure<T> {
  const factory _Error(final String error) = _$ErrorImpl<T>;
  const _Error._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<T, $Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl<T> value, $Res Function(_$NoInternetImpl<T>) then) =
      __$$NoInternetImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<T, $Res>
    extends _$AppFailureCopyWithImpl<T, $Res, _$NoInternetImpl<T>>
    implements _$$NoInternetImplCopyWith<T, $Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl<T> _value, $Res Function(_$NoInternetImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl<T> extends _NoInternet<T> {
  const _$NoInternetImpl() : super._();

  @override
  String toString() {
    return 'AppFailure<$T>.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet<T> extends AppFailure<T> {
  const factory _NoInternet() = _$NoInternetImpl<T>;
  const _NoInternet._() : super._();
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<T, $Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl<T> value, $Res Function(_$TimeOutImpl<T>) then) =
      __$$TimeOutImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<T, $Res>
    extends _$AppFailureCopyWithImpl<T, $Res, _$TimeOutImpl<T>>
    implements _$$TimeOutImplCopyWith<T, $Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl<T> _value, $Res Function(_$TimeOutImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeOutImpl<T> extends _TimeOut<T> {
  const _$TimeOutImpl() : super._();

  @override
  String toString() {
    return 'AppFailure<$T>.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeOutImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _TimeOut<T> extends AppFailure<T> {
  const factory _TimeOut() = _$TimeOutImpl<T>;
  const _TimeOut._() : super._();
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<T, $Res> {
  factory _$$UnauthorizedImplCopyWith(_$UnauthorizedImpl<T> value,
          $Res Function(_$UnauthorizedImpl<T>) then) =
      __$$UnauthorizedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<T, $Res>
    extends _$AppFailureCopyWithImpl<T, $Res, _$UnauthorizedImpl<T>>
    implements _$$UnauthorizedImplCopyWith<T, $Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl<T> _value, $Res Function(_$UnauthorizedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl<T> extends _Unauthorized<T> {
  const _$UnauthorizedImpl() : super._();

  @override
  String toString() {
    return 'AppFailure<$T>.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized<T> extends AppFailure<T> {
  const factory _Unauthorized() = _$UnauthorizedImpl<T>;
  const _Unauthorized._() : super._();
}

/// @nodoc
abstract class _$$HandledImplCopyWith<T, $Res> {
  factory _$$HandledImplCopyWith(
          _$HandledImpl<T> value, $Res Function(_$HandledImpl<T>) then) =
      __$$HandledImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failure});
}

/// @nodoc
class __$$HandledImplCopyWithImpl<T, $Res>
    extends _$AppFailureCopyWithImpl<T, $Res, _$HandledImpl<T>>
    implements _$$HandledImplCopyWith<T, $Res> {
  __$$HandledImplCopyWithImpl(
      _$HandledImpl<T> _value, $Res Function(_$HandledImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$HandledImpl<T>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$HandledImpl<T> extends _Handled<T> {
  const _$HandledImpl(this.failure) : super._();

  @override
  final T failure;

  @override
  String toString() {
    return 'AppFailure<$T>.handled(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandledImpl<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandledImplCopyWith<T, _$HandledImpl<T>> get copyWith =>
      __$$HandledImplCopyWithImpl<T, _$HandledImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() noInternet,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function(T failure) handled,
  }) {
    return handled(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? noInternet,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function(T failure)? handled,
  }) {
    return handled?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? noInternet,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function(T failure)? handled,
    required TResult orElse(),
  }) {
    if (handled != null) {
      return handled(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error<T> value) error,
    required TResult Function(_NoInternet<T> value) noInternet,
    required TResult Function(_TimeOut<T> value) timeout,
    required TResult Function(_Unauthorized<T> value) unauthorized,
    required TResult Function(_Handled<T> value) handled,
  }) {
    return handled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error<T> value)? error,
    TResult? Function(_NoInternet<T> value)? noInternet,
    TResult? Function(_TimeOut<T> value)? timeout,
    TResult? Function(_Unauthorized<T> value)? unauthorized,
    TResult? Function(_Handled<T> value)? handled,
  }) {
    return handled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error<T> value)? error,
    TResult Function(_NoInternet<T> value)? noInternet,
    TResult Function(_TimeOut<T> value)? timeout,
    TResult Function(_Unauthorized<T> value)? unauthorized,
    TResult Function(_Handled<T> value)? handled,
    required TResult orElse(),
  }) {
    if (handled != null) {
      return handled(this);
    }
    return orElse();
  }
}

abstract class _Handled<T> extends AppFailure<T> {
  const factory _Handled(final T failure) = _$HandledImpl<T>;
  const _Handled._() : super._();

  T get failure;
  @JsonKey(ignore: true)
  _$$HandledImplCopyWith<T, _$HandledImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements ExceedingLength<T> {
  const _$ExceedingLengthImpl({required this.failedValue, required this.max});

  @override
  final T? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return exceedingLength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required final T? failedValue,
      required final int max}) = _$ExceedingLengthImpl<T>;

  T? get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooShortImplCopyWith<T, $Res> {
  factory _$$TooShortImplCopyWith(
          _$TooShortImpl<T> value, $Res Function(_$TooShortImpl<T>) then) =
      __$$TooShortImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue, int min});
}

/// @nodoc
class __$$TooShortImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$TooShortImpl<T>>
    implements _$$TooShortImplCopyWith<T, $Res> {
  __$$TooShortImplCopyWithImpl(
      _$TooShortImpl<T> _value, $Res Function(_$TooShortImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = null,
  }) {
    return _then(_$TooShortImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TooShortImpl<T> implements TooShort<T> {
  const _$TooShortImpl({required this.failedValue, required this.min});

  @override
  final T? failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.lengthTooShort(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooShortImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.min, min) || other.min == min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), min);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooShortImplCopyWith<T, _$TooShortImpl<T>> get copyWith =>
      __$$TooShortImplCopyWithImpl<T, _$TooShortImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return lengthTooShort(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return lengthTooShort?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (lengthTooShort != null) {
      return lengthTooShort(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return lengthTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return lengthTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (lengthTooShort != null) {
      return lengthTooShort(this);
    }
    return orElse();
  }
}

abstract class TooShort<T> implements ValueFailure<T> {
  const factory TooShort(
      {required final T? failedValue,
      required final int min}) = _$TooShortImpl<T>;

  T? get failedValue;
  int get min;
  @JsonKey(ignore: true)
  _$$TooShortImplCopyWith<T, _$TooShortImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordStrengthWeakImplCopyWith<T, $Res> {
  factory _$$PasswordStrengthWeakImplCopyWith(
          _$PasswordStrengthWeakImpl<T> value,
          $Res Function(_$PasswordStrengthWeakImpl<T>) then) =
      __$$PasswordStrengthWeakImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? failedValue});
}

/// @nodoc
class __$$PasswordStrengthWeakImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordStrengthWeakImpl<T>>
    implements _$$PasswordStrengthWeakImplCopyWith<T, $Res> {
  __$$PasswordStrengthWeakImplCopyWithImpl(_$PasswordStrengthWeakImpl<T> _value,
      $Res Function(_$PasswordStrengthWeakImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordStrengthWeakImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordStrengthWeakImpl<T> implements PasswordStrengthWeak<T> {
  const _$PasswordStrengthWeakImpl({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordStrengthWeak(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStrengthWeakImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStrengthWeakImplCopyWith<T, _$PasswordStrengthWeakImpl<T>>
      get copyWith => __$$PasswordStrengthWeakImplCopyWithImpl<T,
          _$PasswordStrengthWeakImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return passwordStrengthWeak(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return passwordStrengthWeak?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (passwordStrengthWeak != null) {
      return passwordStrengthWeak(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return passwordStrengthWeak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return passwordStrengthWeak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (passwordStrengthWeak != null) {
      return passwordStrengthWeak(this);
    }
    return orElse();
  }
}

abstract class PasswordStrengthWeak<T> implements ValueFailure<T> {
  const factory PasswordStrengthWeak({required final String? failedValue}) =
      _$PasswordStrengthWeakImpl<T>;

  String? get failedValue;
  @JsonKey(ignore: true)
  _$$PasswordStrengthWeakImplCopyWith<T, _$PasswordStrengthWeakImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordStrengthMediumImplCopyWith<T, $Res> {
  factory _$$PasswordStrengthMediumImplCopyWith(
          _$PasswordStrengthMediumImpl<T> value,
          $Res Function(_$PasswordStrengthMediumImpl<T>) then) =
      __$$PasswordStrengthMediumImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? failedValue});
}

/// @nodoc
class __$$PasswordStrengthMediumImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PasswordStrengthMediumImpl<T>>
    implements _$$PasswordStrengthMediumImplCopyWith<T, $Res> {
  __$$PasswordStrengthMediumImplCopyWithImpl(
      _$PasswordStrengthMediumImpl<T> _value,
      $Res Function(_$PasswordStrengthMediumImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PasswordStrengthMediumImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PasswordStrengthMediumImpl<T> implements PasswordStrengthMedium<T> {
  const _$PasswordStrengthMediumImpl({required this.failedValue});

  @override
  final String? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordStrengthMedium(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStrengthMediumImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStrengthMediumImplCopyWith<T, _$PasswordStrengthMediumImpl<T>>
      get copyWith => __$$PasswordStrengthMediumImplCopyWithImpl<T,
          _$PasswordStrengthMediumImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return passwordStrengthMedium(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return passwordStrengthMedium?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (passwordStrengthMedium != null) {
      return passwordStrengthMedium(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return passwordStrengthMedium(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return passwordStrengthMedium?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (passwordStrengthMedium != null) {
      return passwordStrengthMedium(this);
    }
    return orElse();
  }
}

abstract class PasswordStrengthMedium<T> implements ValueFailure<T> {
  const factory PasswordStrengthMedium({required final String? failedValue}) =
      _$PasswordStrengthMediumImpl<T>;

  String? get failedValue;
  @JsonKey(ignore: true)
  _$$PasswordStrengthMediumImplCopyWith<T, _$PasswordStrengthMediumImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T? failedValue}) = _$EmptyImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineImplCopyWith<T, $Res> {
  factory _$$MultilineImplCopyWith(
          _$MultilineImpl<T> value, $Res Function(_$MultilineImpl<T>) then) =
      __$$MultilineImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$MultilineImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MultilineImpl<T>>
    implements _$$MultilineImplCopyWith<T, $Res> {
  __$$MultilineImplCopyWithImpl(
      _$MultilineImpl<T> _value, $Res Function(_$MultilineImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MultilineImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$MultilineImpl<T> implements Multiline<T> {
  const _$MultilineImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultilineImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      __$$MultilineImplCopyWithImpl<T, _$MultilineImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required final T? failedValue}) = _$MultilineImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongImplCopyWith<T, $Res> {
  factory _$$ListTooLongImplCopyWith(_$ListTooLongImpl<T> value,
          $Res Function(_$ListTooLongImpl<T>) then) =
      __$$ListTooLongImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue, int max});
}

/// @nodoc
class __$$ListTooLongImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ListTooLongImpl<T>>
    implements _$$ListTooLongImplCopyWith<T, $Res> {
  __$$ListTooLongImplCopyWithImpl(
      _$ListTooLongImpl<T> _value, $Res Function(_$ListTooLongImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$ListTooLongImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLongImpl<T> implements ListTooLong<T> {
  const _$ListTooLongImpl({required this.failedValue, required this.max});

  @override
  final T? failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLongImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      __$$ListTooLongImplCopyWithImpl<T, _$ListTooLongImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong(
      {required final T? failedValue,
      required final int max}) = _$ListTooLongImpl<T>;

  T? get failedValue;
  int get max;
  @JsonKey(ignore: true)
  _$$ListTooLongImplCopyWith<T, _$ListTooLongImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneImplCopyWith<T, $Res> {
  factory _$$InvalidPhoneImplCopyWith(_$InvalidPhoneImpl<T> value,
          $Res Function(_$InvalidPhoneImpl<T>) then) =
      __$$InvalidPhoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidPhoneImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPhoneImpl<T>>
    implements _$$InvalidPhoneImplCopyWith<T, $Res> {
  __$$InvalidPhoneImplCopyWithImpl(
      _$InvalidPhoneImpl<T> _value, $Res Function(_$InvalidPhoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPhoneImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneImpl<T> implements InvalidPhone<T> {
  const _$InvalidPhoneImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhoneImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPhoneImplCopyWith<T, _$InvalidPhoneImpl<T>> get copyWith =>
      __$$InvalidPhoneImplCopyWithImpl<T, _$InvalidPhoneImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone<T> implements ValueFailure<T> {
  const factory InvalidPhone({required final T? failedValue}) =
      _$InvalidPhoneImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidPhoneImplCopyWith<T, _$InvalidPhoneImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T? failedValue}) =
      _$InvalidEmailImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnregisteredPhoneImplCopyWith<T, $Res> {
  factory _$$UnregisteredPhoneImplCopyWith(_$UnregisteredPhoneImpl<T> value,
          $Res Function(_$UnregisteredPhoneImpl<T>) then) =
      __$$UnregisteredPhoneImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$UnregisteredPhoneImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$UnregisteredPhoneImpl<T>>
    implements _$$UnregisteredPhoneImplCopyWith<T, $Res> {
  __$$UnregisteredPhoneImplCopyWithImpl(_$UnregisteredPhoneImpl<T> _value,
      $Res Function(_$UnregisteredPhoneImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnregisteredPhoneImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$UnregisteredPhoneImpl<T> implements UnregisteredPhone<T> {
  const _$UnregisteredPhoneImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.unregisteredPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnregisteredPhoneImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnregisteredPhoneImplCopyWith<T, _$UnregisteredPhoneImpl<T>>
      get copyWith =>
          __$$UnregisteredPhoneImplCopyWithImpl<T, _$UnregisteredPhoneImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return unregisteredPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return unregisteredPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (unregisteredPhone != null) {
      return unregisteredPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return unregisteredPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return unregisteredPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (unregisteredPhone != null) {
      return unregisteredPhone(this);
    }
    return orElse();
  }
}

abstract class UnregisteredPhone<T> implements ValueFailure<T> {
  const factory UnregisteredPhone({required final T? failedValue}) =
      _$UnregisteredPhoneImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$UnregisteredPhoneImplCopyWith<T, _$UnregisteredPhoneImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidObjectImplCopyWith<T, $Res> {
  factory _$$InvalidObjectImplCopyWith(_$InvalidObjectImpl<T> value,
          $Res Function(_$InvalidObjectImpl<T>) then) =
      __$$InvalidObjectImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$InvalidObjectImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidObjectImpl<T>>
    implements _$$InvalidObjectImplCopyWith<T, $Res> {
  __$$InvalidObjectImplCopyWithImpl(_$InvalidObjectImpl<T> _value,
      $Res Function(_$InvalidObjectImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidObjectImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$InvalidObjectImpl<T> implements InvalidObject<T> {
  const _$InvalidObjectImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidObject(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidObjectImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidObjectImplCopyWith<T, _$InvalidObjectImpl<T>> get copyWith =>
      __$$InvalidObjectImplCopyWithImpl<T, _$InvalidObjectImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidObject(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidObject?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidObject != null) {
      return invalidObject(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return invalidObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return invalidObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidObject != null) {
      return invalidObject(this);
    }
    return orElse();
  }
}

abstract class InvalidObject<T> implements ValueFailure<T> {
  const factory InvalidObject({required final T? failedValue}) =
      _$InvalidObjectImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$InvalidObjectImplCopyWith<T, _$InvalidObjectImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyObjectImplCopyWith<T, $Res> {
  factory _$$EmptyObjectImplCopyWith(_$EmptyObjectImpl<T> value,
          $Res Function(_$EmptyObjectImpl<T>) then) =
      __$$EmptyObjectImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyObjectImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyObjectImpl<T>>
    implements _$$EmptyObjectImplCopyWith<T, $Res> {
  __$$EmptyObjectImplCopyWithImpl(
      _$EmptyObjectImpl<T> _value, $Res Function(_$EmptyObjectImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyObjectImpl<T> implements EmptyObject<T> {
  const _$EmptyObjectImpl();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyObject()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyObjectImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return emptyObject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return emptyObject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (emptyObject != null) {
      return emptyObject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return emptyObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return emptyObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (emptyObject != null) {
      return emptyObject(this);
    }
    return orElse();
  }
}

abstract class EmptyObject<T> implements ValueFailure<T> {
  const factory EmptyObject() = _$EmptyObjectImpl<T>;
}

/// @nodoc
abstract class _$$ShortTokenImplCopyWith<T, $Res> {
  factory _$$ShortTokenImplCopyWith(
          _$ShortTokenImpl<T> value, $Res Function(_$ShortTokenImpl<T>) then) =
      __$$ShortTokenImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? failedValue});
}

/// @nodoc
class __$$ShortTokenImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortTokenImpl<T>>
    implements _$$ShortTokenImplCopyWith<T, $Res> {
  __$$ShortTokenImplCopyWithImpl(
      _$ShortTokenImpl<T> _value, $Res Function(_$ShortTokenImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortTokenImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ShortTokenImpl<T> implements ShortToken<T> {
  const _$ShortTokenImpl({required this.failedValue});

  @override
  final T? failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortToken(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortTokenImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortTokenImplCopyWith<T, _$ShortTokenImpl<T>> get copyWith =>
      __$$ShortTokenImplCopyWithImpl<T, _$ShortTokenImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return shortToken(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return shortToken?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (shortToken != null) {
      return shortToken(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return shortToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return shortToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (shortToken != null) {
      return shortToken(this);
    }
    return orElse();
  }
}

abstract class ShortToken<T> implements ValueFailure<T> {
  const factory ShortToken({required final T? failedValue}) =
      _$ShortTokenImpl<T>;

  T? get failedValue;
  @JsonKey(ignore: true)
  _$$ShortTokenImplCopyWith<T, _$ShortTokenImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidDateTimeImplCopyWith<T, $Res> {
  factory _$$InvalidDateTimeImplCopyWith(_$InvalidDateTimeImpl<T> value,
          $Res Function(_$InvalidDateTimeImpl<T>) then) =
      __$$InvalidDateTimeImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DateTime failedValue, String pattern});
}

/// @nodoc
class __$$InvalidDateTimeImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidDateTimeImpl<T>>
    implements _$$InvalidDateTimeImplCopyWith<T, $Res> {
  __$$InvalidDateTimeImplCopyWithImpl(_$InvalidDateTimeImpl<T> _value,
      $Res Function(_$InvalidDateTimeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
    Object? pattern = null,
  }) {
    return _then(_$InvalidDateTimeImpl<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pattern: null == pattern
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidDateTimeImpl<T> implements InvalidDateTime<T> {
  const _$InvalidDateTimeImpl(
      {required this.failedValue, required this.pattern});

  @override
  final DateTime failedValue;
  @override
  final String pattern;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidDateTime(failedValue: $failedValue, pattern: $pattern)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidDateTimeImpl<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue, pattern);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidDateTimeImplCopyWith<T, _$InvalidDateTimeImpl<T>> get copyWith =>
      __$$InvalidDateTimeImplCopyWithImpl<T, _$InvalidDateTimeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? failedValue, int max) exceedingLength,
    required TResult Function(T? failedValue, int min) lengthTooShort,
    required TResult Function(String? failedValue) passwordStrengthWeak,
    required TResult Function(String? failedValue) passwordStrengthMedium,
    required TResult Function(T? failedValue) empty,
    required TResult Function(T? failedValue) multiline,
    required TResult Function(T? failedValue, int max) listTooLong,
    required TResult Function(T? failedValue) invalidPhone,
    required TResult Function(T? failedValue) invalidEmail,
    required TResult Function(T? failedValue) unregisteredPhone,
    required TResult Function(T? failedValue) invalidObject,
    required TResult Function() emptyObject,
    required TResult Function(T? failedValue) shortToken,
    required TResult Function(DateTime failedValue, String pattern)
        invalidDateTime,
  }) {
    return invalidDateTime(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? failedValue, int max)? exceedingLength,
    TResult? Function(T? failedValue, int min)? lengthTooShort,
    TResult? Function(String? failedValue)? passwordStrengthWeak,
    TResult? Function(String? failedValue)? passwordStrengthMedium,
    TResult? Function(T? failedValue)? empty,
    TResult? Function(T? failedValue)? multiline,
    TResult? Function(T? failedValue, int max)? listTooLong,
    TResult? Function(T? failedValue)? invalidPhone,
    TResult? Function(T? failedValue)? invalidEmail,
    TResult? Function(T? failedValue)? unregisteredPhone,
    TResult? Function(T? failedValue)? invalidObject,
    TResult? Function()? emptyObject,
    TResult? Function(T? failedValue)? shortToken,
    TResult? Function(DateTime failedValue, String pattern)? invalidDateTime,
  }) {
    return invalidDateTime?.call(failedValue, pattern);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? failedValue, int max)? exceedingLength,
    TResult Function(T? failedValue, int min)? lengthTooShort,
    TResult Function(String? failedValue)? passwordStrengthWeak,
    TResult Function(String? failedValue)? passwordStrengthMedium,
    TResult Function(T? failedValue)? empty,
    TResult Function(T? failedValue)? multiline,
    TResult Function(T? failedValue, int max)? listTooLong,
    TResult Function(T? failedValue)? invalidPhone,
    TResult Function(T? failedValue)? invalidEmail,
    TResult Function(T? failedValue)? unregisteredPhone,
    TResult Function(T? failedValue)? invalidObject,
    TResult Function()? emptyObject,
    TResult Function(T? failedValue)? shortToken,
    TResult Function(DateTime failedValue, String pattern)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(failedValue, pattern);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(TooShort<T> value) lengthTooShort,
    required TResult Function(PasswordStrengthWeak<T> value)
        passwordStrengthWeak,
    required TResult Function(PasswordStrengthMedium<T> value)
        passwordStrengthMedium,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnregisteredPhone<T> value) unregisteredPhone,
    required TResult Function(InvalidObject<T> value) invalidObject,
    required TResult Function(EmptyObject<T> value) emptyObject,
    required TResult Function(ShortToken<T> value) shortToken,
    required TResult Function(InvalidDateTime<T> value) invalidDateTime,
  }) {
    return invalidDateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExceedingLength<T> value)? exceedingLength,
    TResult? Function(TooShort<T> value)? lengthTooShort,
    TResult? Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult? Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(ListTooLong<T> value)? listTooLong,
    TResult? Function(InvalidPhone<T> value)? invalidPhone,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult? Function(InvalidObject<T> value)? invalidObject,
    TResult? Function(EmptyObject<T> value)? emptyObject,
    TResult? Function(ShortToken<T> value)? shortToken,
    TResult? Function(InvalidDateTime<T> value)? invalidDateTime,
  }) {
    return invalidDateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(TooShort<T> value)? lengthTooShort,
    TResult Function(PasswordStrengthWeak<T> value)? passwordStrengthWeak,
    TResult Function(PasswordStrengthMedium<T> value)? passwordStrengthMedium,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnregisteredPhone<T> value)? unregisteredPhone,
    TResult Function(InvalidObject<T> value)? invalidObject,
    TResult Function(EmptyObject<T> value)? emptyObject,
    TResult Function(ShortToken<T> value)? shortToken,
    TResult Function(InvalidDateTime<T> value)? invalidDateTime,
    required TResult orElse(),
  }) {
    if (invalidDateTime != null) {
      return invalidDateTime(this);
    }
    return orElse();
  }
}

abstract class InvalidDateTime<T> implements ValueFailure<T> {
  const factory InvalidDateTime(
      {required final DateTime failedValue,
      required final String pattern}) = _$InvalidDateTimeImpl<T>;

  DateTime get failedValue;
  String get pattern;
  @JsonKey(ignore: true)
  _$$InvalidDateTimeImplCopyWith<T, _$InvalidDateTimeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
