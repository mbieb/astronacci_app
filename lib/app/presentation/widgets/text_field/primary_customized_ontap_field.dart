part of '../text_field.dart';

class PrimaryCustomizedOnTapField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? error;
  final Function()? onPressed;
  final Widget? prefixIcon;
  final Widget? trailing;
  final String? value;
  final bool? isActive;
  const PrimaryCustomizedOnTapField({
    this.title,
    this.hintText,
    this.error,
    this.onPressed,
    this.prefixIcon,
    this.trailing,
    this.value,
    this.isActive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Visibility(
      visible: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) _TextFieldTitle(title: title!, isRequired: false),
          PrimaryBaseValueField(
            isError: false,
            onPressed: onPressed,
            isActive: isActive,
            leading: prefixIcon,
            trailing: trailing,
            value: value ?? hintText ?? '',
            textColor:
                value == null ? themeData.colorScheme.onBackground : null,
          ),
          if (error != null)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                error!,
                style: cTextMed.copyWith(color: Colors.red),
                textAlign: TextAlign.right,
              ),
            ),
          gapH16,
        ],
      ),
    );
  }
}
