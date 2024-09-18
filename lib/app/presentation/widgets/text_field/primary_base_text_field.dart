part of '../text_field.dart';

class PrimaryBaseTextField extends StatelessWidget {
  const PrimaryBaseTextField({
    super.key,
    this.hintText,
    this.labelText,
    required this.isError,
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType,
    this.inputFormatters,
    this.textInputAction,
    this.obscureText = false,
    this.suffixIcon,
    this.suffix,
    this.error,
    this.prefixIcon,
    this.prefix,
    this.textCapitalization,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.backgroundColor,
    this.textAlign = TextAlign.start,
  });

  final String? hintText;
  final String? labelText;
  final bool isError;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? prefix;
  final TextCapitalization? textCapitalization;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final TextAlign textAlign;
  final String? error;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: cColorGrey4,
        width: 1,
      ),
      gapPadding: 0,
    );

    return TextField(
      textAlign: textAlign,
      style: cTextMed.copyWith(
        letterSpacing: 0.1,
        color: themeData.colorScheme.onBackground,
      ),
      controller: controller,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      minLines: minLines,
      maxLines: maxLines,
      maxLength: maxLength,
      focusNode: focusNode,
      decoration: InputDecoration(
        contentPadding: padding(horizontal: 16, vertical: 12),
        border: outlineInputBorder,
        hintText: hintText,
        labelText: labelText,
        hintStyle: cTextAccentReg,
        counterText: '',
        enabledBorder: outlineInputBorder,
        fillColor: backgroundColor,
        filled: backgroundColor != null ? true : false,
        errorBorder: outlineInputBorder.copyWith(
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedBorder: outlineInputBorder.copyWith(
          borderSide:
              BorderSide(color: themeData.colorScheme.primary, width: 1),
        ),
        error: isError
            ? Text(
                error ?? '',
                style: cTextRegSM.copyWith(
                  color: Colors.red,
                ),
              )
            : null,
        // errorStyle: const TextStyle(fontSize: 0.05, color: Colors.red),
        errorMaxLines: 1,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
