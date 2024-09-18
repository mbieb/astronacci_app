import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/app/presentation/helpers/ui_helper.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Widget? icon;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return DefaultTextStyle(
      style: cTextMed,
      child: MaterialButton(
        color: Colors.blue,
        disabledColor: const Color(0xffbababa),
        splashColor: Colors.white,
        focusElevation: 0,
        hoverElevation: 0,
        highlightColor: themeData.primaryColor,
        highlightElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: padding(horizontal: 24),
        elevation: 0,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  text,
                  style: cTextMed.copyWith(
                    color: themeData.colorScheme.onPrimary,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            if (icon != null)
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: icon,
              ),
          ],
        ),
      ),
    );
  }
}
