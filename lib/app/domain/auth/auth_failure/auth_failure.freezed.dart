// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailOrPasswordImplCopyWith<$Res> {
  factory _$$InvalidEmailOrPasswordImplCopyWith(
          _$InvalidEmailOrPasswordImpl value,
          $Res Function(_$InvalidEmailOrPasswordImpl) then) =
      __$$InvalidEmailOrPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvalidEmailOrPasswordImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidEmailOrPasswordImpl>
    implements _$$InvalidEmailOrPasswordImplCopyWith<$Res> {
  __$$InvalidEmailOrPasswordImplCopyWithImpl(
      _$InvalidEmailOrPasswordImpl _value,
      $Res Function(_$InvalidEmailOrPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvalidEmailOrPasswordImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmailOrPasswordImpl implements _InvalidEmailOrPassword {
  const _$InvalidEmailOrPasswordImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailOrPasswordImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailOrPasswordImplCopyWith<_$InvalidEmailOrPasswordImpl>
      get copyWith => __$$InvalidEmailOrPasswordImplCopyWithImpl<
          _$InvalidEmailOrPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailOrPassword implements AuthFailure {
  const factory _InvalidEmailOrPassword(final String message) =
      _$InvalidEmailOrPasswordImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$InvalidEmailOrPasswordImplCopyWith<_$InvalidEmailOrPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetImpl implements _NoInternet {
  const _$NoInternetImpl();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
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
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AuthFailure {
  const factory _NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$TimeOutImplCopyWith<$Res> {
  factory _$$TimeOutImplCopyWith(
          _$TimeOutImpl value, $Res Function(_$TimeOutImpl) then) =
      __$$TimeOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeOutImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$TimeOutImpl>
    implements _$$TimeOutImplCopyWith<$Res> {
  __$$TimeOutImplCopyWithImpl(
      _$TimeOutImpl _value, $Res Function(_$TimeOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeOutImpl implements _TimeOut {
  const _$TimeOutImpl();

  @override
  String toString() {
    return 'AuthFailure.timeOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return timeOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return timeOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class _TimeOut implements AuthFailure {
  const factory _TimeOut() = _$TimeOutImpl;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoDataImpl implements _NoData {
  const _$NoDataImpl();

  @override
  String toString() {
    return 'AuthFailure.noData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements AuthFailure {
  const factory _NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$InitialOpenAppImplCopyWith<$Res> {
  factory _$$InitialOpenAppImplCopyWith(_$InitialOpenAppImpl value,
          $Res Function(_$InitialOpenAppImpl) then) =
      __$$InitialOpenAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialOpenAppImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InitialOpenAppImpl>
    implements _$$InitialOpenAppImplCopyWith<$Res> {
  __$$InitialOpenAppImplCopyWithImpl(
      _$InitialOpenAppImpl _value, $Res Function(_$InitialOpenAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialOpenAppImpl implements _InitialOpenApp {
  const _$InitialOpenAppImpl();

  @override
  String toString() {
    return 'AuthFailure.initialOpenApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialOpenAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return initialOpenApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return initialOpenApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (initialOpenApp != null) {
      return initialOpenApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return initialOpenApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return initialOpenApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (initialOpenApp != null) {
      return initialOpenApp(this);
    }
    return orElse();
  }
}

abstract class _InitialOpenApp implements AuthFailure {
  const factory _InitialOpenApp() = _$InitialOpenAppImpl;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledImpl implements _Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'AuthFailure.cancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function() serverError,
    required TResult Function() noInternet,
    required TResult Function() timeOut,
    required TResult Function() noData,
    required TResult Function() initialOpenApp,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function()? serverError,
    TResult? Function()? noInternet,
    TResult? Function()? timeOut,
    TResult? Function()? noData,
    TResult? Function()? initialOpenApp,
    TResult? Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function()? serverError,
    TResult Function()? noInternet,
    TResult Function()? timeOut,
    TResult Function()? noData,
    TResult Function()? initialOpenApp,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmailOrPassword value) error,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_NoInternet value) noInternet,
    required TResult Function(_TimeOut value) timeOut,
    required TResult Function(_NoData value) noData,
    required TResult Function(_InitialOpenApp value) initialOpenApp,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmailOrPassword value)? error,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_NoInternet value)? noInternet,
    TResult? Function(_TimeOut value)? timeOut,
    TResult? Function(_NoData value)? noData,
    TResult? Function(_InitialOpenApp value)? initialOpenApp,
    TResult? Function(_Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmailOrPassword value)? error,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_NoInternet value)? noInternet,
    TResult Function(_TimeOut value)? timeOut,
    TResult Function(_NoData value)? noData,
    TResult Function(_InitialOpenApp value)? initialOpenApp,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements AuthFailure {
  const factory _Cancelled() = _$CancelledImpl;
}
