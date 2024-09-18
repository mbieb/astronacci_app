import 'package:freezed_annotation/freezed_annotation.dart';
part 'dropdown_text.freezed.dart';

@freezed
class DropdownText with _$DropdownText {
  const factory DropdownText({
    required String id,
    required String text,
  }) = _DropdownText;
}
