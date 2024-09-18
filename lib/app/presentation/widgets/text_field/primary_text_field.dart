part of '../text_field.dart';

class PrimaryTextField extends StatelessWidget {
  final String? title;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? error;
  final String? hintText;
  final String? labelText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final int? minLines;
  final int maxLines;
  final int? maxLength;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Color? backgroundColor;
  final bool isWithSpaceBottom;
  final TextAlign textAlign;
  const PrimaryTextField({
    super.key,
    this.title,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.error,
    this.hintText,
    this.labelText,
    this.inputFormatters,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.obscureText = false,
    this.suffixIcon,
    this.suffix,
    this.prefixIcon,
    this.prefix,
    this.backgroundColor,
    this.isWithSpaceBottom = true,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          _TextFieldTitle(
            title: title!,
            isRequired: false,
          ),
        PrimaryBaseTextField(
          hintText: hintText,
          labelText: labelText,
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
          obscureText: obscureText,
          suffixIcon: suffixIcon,
          suffix: suffix,
          prefixIcon: prefixIcon,
          prefix: prefix,
          backgroundColor: backgroundColor,
          textAlign: textAlign,
          error: error,
        ),
        isWithSpaceBottom ? gapH16 : const SizedBox.shrink(),
      ],
    );
  }
}

class _TextFieldTitle extends StatelessWidget {
  const _TextFieldTitle({
    required this.title,
    required this.isRequired,
  });

  final String title;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding(bottom: 4),
      child: RichText(
        text: TextSpan(
          style: cTextMed,
          children: [
            TextSpan(text: title),
            if (isRequired)
              const TextSpan(
                text: ' *',
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
