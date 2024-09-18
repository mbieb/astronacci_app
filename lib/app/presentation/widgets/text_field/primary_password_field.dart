part of '../text_field.dart';

class PrimaryPasswordField extends StatefulWidget {
  final String? title;
  final String? hintText;
  final bool isRequired;
  final bool useOneLinerMsg;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final EPasswordValidation? passwordValidation;
  final String? error;
  final TextInputAction? textInputAction;

  const PrimaryPasswordField({
    super.key,
    this.title,
    this.hintText,
    this.isRequired = true,
    this.useOneLinerMsg = false,
    this.controller,
    this.passwordValidation,
    this.onChanged,
    this.onSubmitted,
    this.error,
    this.textInputAction,
  });

  @override
  State<PrimaryPasswordField> createState() => _PrimaryPasswordFieldState();
}

class _PrimaryPasswordFieldState extends State<PrimaryPasswordField> {
  bool isOnFocus = false;
  bool isObsecureText = true;
  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(_onFocusChanged);
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  _onFocusChanged() {
    setState(() {
      isOnFocus = focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isError = widget.error != null;

    bool isValidationStrong =
        widget.passwordValidation == EPasswordValidation.strong;

    bool isValidationNotEmpty = widget.passwordValidation != null;

    bool isValidationError =
        !isError && isValidationNotEmpty && !isValidationStrong;

    return Focus(
      onFocusChange: (value) {
        if (value) focusNode.requestFocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            _TextFieldTitle(
              title: widget.title!,
              isRequired: widget.isRequired,
            ),
          PrimaryBaseTextField(
            error: widget.error,
            isError: isError || isValidationError,
            onChanged: widget.onChanged,
            onSubmitted: widget.onSubmitted,
            controller: widget.controller,
            hintText: widget.hintText,
            obscureText: isObsecureText,
            keyboardType: TextInputType.visiblePassword,
            maxLines: 1,
            maxLength: 64,
            textInputAction: widget.textInputAction,
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter,
            ],
            prefixIcon: const Icon(
              Icons.lock_outline,
              size: 22,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                isObsecureText ? Icons.visibility_off : Icons.visibility,
              ),
              iconSize: 22,
              // color: isOnFocus ? cColorNeutral100 : cColorNeutral40,
              onPressed: () => setState(() => isObsecureText = !isObsecureText),
            ),
            focusNode: focusNode,
          ),
          gapH16,
        ],
      ),
    );
  }
}

enum EPasswordValidation {
  weak,
  medium,
  strong,
}
