part of '../text_field.dart';

class PrimarySearchField extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? error;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final int? minLines;
  final int maxLines;
  final int? maxLength;
  const PrimarySearchField({
    super.key,
    this.title,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.error,
    this.hintText = 'Search',
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryBaseTextField(
          hintText: hintText,
          isError: error != null,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          controller: controller,
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          textCapitalization: textCapitalization,
          textInputAction: textInputAction,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        verticalSpace(12),
      ],
    );
  }
}
