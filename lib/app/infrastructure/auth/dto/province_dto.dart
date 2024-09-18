import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'province_dto.freezed.dart';
part 'province_dto.g.dart';

@freezed
class ProvinceDto with _$ProvinceDto {
  const ProvinceDto._();
  const factory ProvinceDto({
    String? id,
    String? name,
  }) = _ProvinceDto;

  factory ProvinceDto.fromJson(Map<String, dynamic> json) =>
      _$ProvinceDtoFromJson(json);

  DropdownText toDomain() => DropdownText(
        id: id ?? '',
        text: name ?? '',
      );
}
