part of '../text_field.dart';

class PrimaryBaseTextField extends StatelessWidget {
  const PrimaryBaseTextField({
    Key? key,
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
    this.prefixIcon,
    this.prefix,
    this.textCapitalization,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.backgroundColor,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: cColorGrey3,
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
        errorText: isError ? '' : null,
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
        errorStyle: const TextStyle(fontSize: 0.05, color: Colors.red),
        errorMaxLines: 1,
        suffix: suffix,
        suffixIcon: suffixIcon,
        prefix: prefix,
        prefixIcon: prefixIcon,
      ),
    );
  }
}

class _TextFieldFooter extends StatelessWidget {
  final String? iconPath;
  final Widget title;
  final EdgeInsets? margin;
  const _TextFieldFooter({
    Key? key,
    this.iconPath = '',
    required this.title,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? padding(top: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: DefaultTextStyle(
              style: const TextStyle(height: 1.7),
              child: title,
            ),
          ),
        ],
      ),
    );
  }
}
