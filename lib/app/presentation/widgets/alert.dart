import 'package:astronacci_app/app/presentation/constants/text_style.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Alert {
  static notify(context, title, body) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: cTextReg,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: cTextReg,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'Ok',
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  static notifyAction(context, title, body,
      {required Function positiveAction}) {
    I10n i10n = I10n.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contextX) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: cTextReg,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: cTextReg,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                i10n.alertOk,
                style: cTextReg.copyWith(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(contextX).pop();
                positiveAction();
              },
            ),
          ],
        );
      },
    );
  }

  static option({
    required BuildContext context,
    String title = '',
    String body = '',
    String? cancelText,
    String? positiveText,
    Color? cancelTextColor,
    Color? positiveTextColor,
    required Function positiveAction,
  }) {
    I10n i10n = I10n.of(context);
    Color cancelColorValue = cancelTextColor ?? Colors.black;
    Color positiveColorValue = positiveTextColor ?? Colors.black;
    String cancelTextValue = cancelText ?? i10n.alertCancel;
    String positiveTextValue = positiveText ?? i10n.alertOk;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: cTextBold,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: cTextReg,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                cancelTextValue,
                style: cTextReg.copyWith(
                  color: cancelColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                positiveTextValue,
                style: cTextReg.copyWith(
                  color: positiveColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                positiveAction();
              },
            ),
          ],
        );
      },
    );
  }
}
