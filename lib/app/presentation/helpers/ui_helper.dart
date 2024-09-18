import 'package:flutter/material.dart';

Widget verticalSpace(double height) {
  return SizedBox(height: height);
}

Widget horizontalSpace(double width) {
  return SizedBox(width: width);
}

EdgeInsets mqPadding(BuildContext context) {
  return MediaQuery.of(context).viewPadding;
}

EdgeInsets mqInsets(BuildContext context) {
  return MediaQuery.of(context).viewInsets;
}

EdgeInsets padding({
  double? all,
  double? vertical,
  double? horizontal,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  left = left ?? horizontal ?? all ?? 0;
  top = top ?? vertical ?? all ?? 0;
  right = right ?? horizontal ?? all ?? 0;
  bottom = bottom ?? vertical ?? all ?? 0;
  return EdgeInsets.fromLTRB(left, top, right, bottom);
}

EdgeInsets margin({
  double? all,
  double? vertical,
  double? horizontal,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  left = left ?? horizontal ?? all ?? 0;
  top = top ?? vertical ?? all ?? 0;
  right = right ?? horizontal ?? all ?? 0;
  bottom = bottom ?? vertical ?? all ?? 0;
  return EdgeInsets.fromLTRB(left, top, right, bottom);
}

void unfocusAll(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  currentFocus.unfocus();
}

String customNumberFormat(int val) {
  return '#${val.toString().padLeft(3, '0')}';
}
