part of '../text_field.dart';

class PrimaryReadOnlyTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? value;
  final Widget? icon;
  const PrimaryReadOnlyTextField({
    Key? key,
    this.title,
    this.hintText,
    this.value,
    this.icon,
  }) : super(key: key);

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
          backgroundColor: cColorGrey2,
          textColor: cColorGrey4,
          leading: icon,
        ),
        verticalSpace(12),
      ],
    );
  }
}
