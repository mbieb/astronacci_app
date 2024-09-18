part of '../text_field.dart';

class PrimaryDropdownField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? labelText;
  final String? error;
  final Function(DropdownText? item) onChanged;
  final List<DropdownText> items;
  final Widget? icon;
  final DropdownText? value;
  final bool? isActive;
  final bool isWithSpaceBottom;
  const PrimaryDropdownField({
    required this.onChanged,
    required this.items,
    this.title,
    this.hintText,
    this.labelText,
    this.error,
    this.icon,
    this.value,
    this.isActive,
    this.isWithSpaceBottom = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0),
      ),
      borderSide: BorderSide(color: cColorGrey4, width: 1.2),
    );

    return Visibility(
      visible: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) _TextFieldTitle(title: title!, isRequired: false),
          Theme(
            data: Theme.of(context).copyWith(
              canvasColor: themeData.colorScheme.background,
            ),
            child: DropdownButtonFormField<DropdownText>(
              isExpanded: true,
              hint: Text(
                hintText ?? '',
                style: cTextAccentReg,
              ),
              decoration: InputDecoration(
                labelText: labelText,
                contentPadding: padding(
                    vertical: 12,
                    left: icon != null ? 8 : 16,
                    right: icon != null ? 0 : 8),
                border: outlineInputBorder,
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder.copyWith(
                  borderSide: BorderSide(
                      color: themeData.colorScheme.primary, width: 1),
                ),
                prefixIcon: icon,
              ),
              value: value,
              items: items.map((DropdownText value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value.text,
                    style: cTextMed.copyWith(
                        color: themeData.colorScheme.onBackground),
                  ),
                );
              }).toList(),
              onChanged: (val) => onChanged(val),
            ),
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
          isWithSpaceBottom ? gapH16 : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
