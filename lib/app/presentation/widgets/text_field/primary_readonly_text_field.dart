part of '../text_field.dart';

class PrimaryReadOnlyTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? value;
  final Widget? icon;
  const PrimaryReadOnlyTextField({
    super.key,
    this.title,
    this.hintText,
    this.value,
    this.icon,
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
        PrimaryBaseValueField(
          isError: false,
          value: value ?? hintText ?? '',
          backgroundColor: cColorGrey3,
          textColor: cColorGrey4,
          leading: icon,
        ),
        verticalSpace(12),
      ],
    );
  }
}
