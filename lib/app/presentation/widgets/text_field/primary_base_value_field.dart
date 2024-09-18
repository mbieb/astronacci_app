part of '../text_field.dart';

class PrimaryBaseValueField extends StatelessWidget {
  const PrimaryBaseValueField({
    super.key,
    this.value,
    this.hintText,
    required this.isError,
    this.onPressed,
    this.leading,
    this.trailing,
    this.isExpanded = true,
    this.isActive = false,
    this.textColor,
    this.backgroundColor,
  });

  final String? value;
  final String? hintText;
  final bool isError;
  final VoidCallback? onPressed;
  final Widget? leading;
  final Widget? trailing;
  final bool isExpanded;
  final bool? isActive;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    Widget field = Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(
          color: cColorGrey4,
          width: 1,
        ),
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: padding(
            vertical: Sizes.p14,
            left: Sizes.p12,
            right: Sizes.p8,
          ),
          child: Row(
            children: [
              if (leading != null) leading!,
              gapW12,
              Expanded(
                child: Text(
                  value ?? hintText ?? '',
                  style: cTextMed.copyWith(
                    letterSpacing: 0.1,
                    color: textColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              if (trailing != null) trailing!
            ],
          ),
        ),
      ),
    );
    if (!isExpanded) return IntrinsicWidth(child: field);
    return field;
  }
}
