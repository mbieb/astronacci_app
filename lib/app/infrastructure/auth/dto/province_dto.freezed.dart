// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProvinceDto _$ProvinceDtoFromJson(Map<String, dynamic> json) {
  return _ProvinceDto.fromJson(json);
}

/// @nodoc
mixin _$ProvinceDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceDtoCopyWith<ProvinceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceDtoCopyWith<$Res> {
  factory $ProvinceDtoCopyWith(
          ProvinceDto value, $Res Function(ProvinceDto) then) =
      _$ProvinceDtoCopyWithImpl<$Res, ProvinceDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ProvinceDtoCopyWithImpl<$Res, $Val extends ProvinceDto>
    implements $ProvinceDtoCopyWith<$Res> {
  _$ProvinceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceDtoImplCopyWith<$Res>
    implements $ProvinceDtoCopyWith<$Res> {
  factory _$$ProvinceDtoImplCopyWith(
          _$ProvinceDtoImpl value, $Res Function(_$ProvinceDtoImpl) then) =
      __$$ProvinceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ProvinceDtoImplCopyWithImpl<$Res>
    extends _$ProvinceDtoCopyWithImpl<$Res, _$ProvinceDtoImpl>
    implements _$$ProvinceDtoImplCopyWith<$Res> {
  __$$ProvinceDtoImplCopyWithImpl(
      _$ProvinceDtoImpl _value, $Res Function(_$ProvinceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProvinceDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProvinceDtoImpl extends _ProvinceDto {
  const _$ProvinceDtoImpl({this.id, this.name}) : super._();

  factory _$ProvinceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProvinceDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProvinceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceDtoImplCopyWith<_$ProvinceDtoImpl> get copyWith =>
      __$$ProvinceDtoImplCopyWithImpl<_$ProvinceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProvinceDtoImplToJson(
      this,
    );
  }
}

abstract class _ProvinceDto extends ProvinceDto {
  const factory _ProvinceDto({final String? id, final String? name}) =
      _$ProvinceDtoImpl;
  const _ProvinceDto._() : super._();

  factory _ProvinceDto.fromJson(Map<String, dynamic> json) =
      _$ProvinceDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceDtoImplCopyWith<_$ProvinceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
