// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownText {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DropdownTextCopyWith<DropdownText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownTextCopyWith<$Res> {
  factory $DropdownTextCopyWith(
          DropdownText value, $Res Function(DropdownText) then) =
      _$DropdownTextCopyWithImpl<$Res, DropdownText>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$DropdownTextCopyWithImpl<$Res, $Val extends DropdownText>
    implements $DropdownTextCopyWith<$Res> {
  _$DropdownTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownTextImplCopyWith<$Res>
    implements $DropdownTextCopyWith<$Res> {
  factory _$$DropdownTextImplCopyWith(
          _$DropdownTextImpl value, $Res Function(_$DropdownTextImpl) then) =
      __$$DropdownTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$DropdownTextImplCopyWithImpl<$Res>
    extends _$DropdownTextCopyWithImpl<$Res, _$DropdownTextImpl>
    implements _$$DropdownTextImplCopyWith<$Res> {
  __$$DropdownTextImplCopyWithImpl(
      _$DropdownTextImpl _value, $Res Function(_$DropdownTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$DropdownTextImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DropdownTextImpl implements _DropdownText {
  const _$DropdownTextImpl({required this.id, required this.text});

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'DropdownText(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownTextImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownTextImplCopyWith<_$DropdownTextImpl> get copyWith =>
      __$$DropdownTextImplCopyWithImpl<_$DropdownTextImpl>(this, _$identity);
}

abstract class _DropdownText implements DropdownText {
  const factory _DropdownText(
      {required final String id,
      required final String text}) = _$DropdownTextImpl;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$DropdownTextImplCopyWith<_$DropdownTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
