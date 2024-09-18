import 'package:astronacci_app/app/presentation/constants/colors.dart';
import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
  fontFamily: 'Poppins',
  color: cColorSecondary,
);

final TextStyle _baseTextStyle2XS = _textStyle.copyWith(fontSize: 10);
final TextStyle _baseTextStyleXS = _textStyle.copyWith(fontSize: 12);
final TextStyle _baseTextStyleSM = _textStyle.copyWith(fontSize: 14);
final TextStyle _baseTextStyle = _textStyle.copyWith(fontSize: 16);
final TextStyle _baseTextStyleLg = _textStyle.copyWith(fontSize: 20);
final TextStyle _baseTextStyleXL = _textStyle.copyWith(fontSize: 24);
final TextStyle _baseTextStyle2XL = _textStyle.copyWith(fontSize: 32);
final TextStyle _baseTextStyle3XL = _textStyle.copyWith(fontSize: 40);

//REGULAR
final TextStyle _regularTextStyle =
    _textStyle.copyWith(fontWeight: FontWeight.w400);

final TextStyle cTextReg2XS = _baseTextStyle2XS.merge(_regularTextStyle);
final TextStyle cTextPrimaryReg2XS = cTextReg2XS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentReg2XS = cTextReg2XS.copyWith(color: cColorGrey4);

final TextStyle cTextRegXS = _baseTextStyleXS.merge(_regularTextStyle);
final TextStyle cTextPrimaryRegXS = cTextRegXS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentRegXS = cTextRegXS.copyWith(color: cColorGrey4);

final TextStyle cTextRegSM = _baseTextStyleSM.merge(_regularTextStyle);
final TextStyle cTextPrimaryRegSM = cTextRegSM.copyWith(color: cColorPrimary);
final TextStyle cTextAccentRegSM = cTextRegSM.copyWith(color: cColorGrey4);

final TextStyle cTextReg = _baseTextStyle.merge(_regularTextStyle);
final TextStyle cTextPrimaryReg = cTextReg.copyWith(color: cColorPrimary);
final TextStyle cTextAccentReg = cTextReg.copyWith(color: cColorGrey4);

final TextStyle cTextRegLg = _baseTextStyleLg.merge(_regularTextStyle);
final TextStyle cTextPrimaryRegLg = cTextRegLg.copyWith(color: cColorPrimary);
final TextStyle cTextAccentRegLg = cTextRegLg.copyWith(color: cColorGrey4);

final TextStyle cTextRegXL = _baseTextStyleXL.merge(_regularTextStyle);
final TextStyle cTextPrimaryRegXL = cTextRegXL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentRegXL = cTextRegXL.copyWith(color: cColorGrey4);

final TextStyle cTextReg2XL = _baseTextStyle2XL.merge(_regularTextStyle);
final TextStyle cTextPrimaryReg2XL = cTextReg2XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentReg2XL = cTextReg2XL.copyWith(color: cColorGrey4);

final TextStyle cTextReg3XL = _baseTextStyle3XL.merge(_regularTextStyle);
final TextStyle cTextPrimaryReg3XL = cTextReg3XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentReg3XL = cTextReg3XL.copyWith(color: cColorGrey4);

//MEDIUM
final TextStyle _mediumTextStyle =
    _textStyle.copyWith(fontWeight: FontWeight.w500);

final TextStyle cTextMed2XS = _baseTextStyle2XS.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMed2XS = cTextMed2XS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMed2XS = cTextMed2XS.copyWith(color: cColorGrey4);

final TextStyle cTextMedXS = _baseTextStyleXS.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMedXS = cTextMedXS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMedXS = cTextMedXS.copyWith(color: cColorGrey4);

final TextStyle cTextMedSM = _baseTextStyleSM.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMedSM = cTextMedSM.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMedSM = cTextMedSM.copyWith(color: cColorGrey4);

final TextStyle cTextMed = _baseTextStyle.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMed = cTextMed.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMed = cTextMed.copyWith(color: cColorGrey4);

final TextStyle cTextMedLg = _baseTextStyleLg.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMedLg = cTextMedLg.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMedLg = cTextMedLg.copyWith(color: cColorGrey4);

final TextStyle cTextMedXL = _baseTextStyleXL.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMedXL = cTextMedXL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMedXL = cTextMedXL.copyWith(color: cColorGrey4);

final TextStyle cTextMed2XL = _baseTextStyle2XL.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMed2XL = cTextMed2XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMed2XL = cTextMed2XL.copyWith(color: cColorGrey4);

final TextStyle cTextMed3XL = _baseTextStyle3XL.merge(_mediumTextStyle);
final TextStyle cTextPrimaryMed3XL = cTextMed3XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentMed3XL = cTextMed3XL.copyWith(color: cColorGrey4);

//BOLD
final TextStyle _boldTextStyle =
    _textStyle.copyWith(fontWeight: FontWeight.w700);

final TextStyle cTextBold2XS = _baseTextStyle2XS.merge(_boldTextStyle);
final TextStyle cTextPrimaryBold2XS =
    cTextBold2XS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBold2XS = cTextBold2XS.copyWith(color: cColorGrey4);

final TextStyle cTextBoldXS = _baseTextStyleXS.merge(_boldTextStyle);
final TextStyle cTextPrimaryBoldXS = cTextBoldXS.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBoldXS = cTextBoldXS.copyWith(color: cColorGrey4);

final TextStyle cTextBoldSM = _baseTextStyleSM.merge(_boldTextStyle);
final TextStyle cTextPrimaryBoldSM = cTextBoldSM.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBoldSM = cTextBoldSM.copyWith(color: cColorGrey4);

final TextStyle cTextBold = _baseTextStyle.merge(_boldTextStyle);
final TextStyle cTextPrimaryBold = cTextBold.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBold = cTextBold.copyWith(color: cColorGrey4);

final TextStyle cTextBoldLg = _baseTextStyleLg.merge(_boldTextStyle);
final TextStyle cTextPrimaryBoldLg = cTextBoldLg.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBoldLg = cTextBoldLg.copyWith(color: cColorGrey4);

final TextStyle cTextBold2XL = _baseTextStyle2XL.merge(_boldTextStyle);
final TextStyle cTextPrimaryBold2XL =
    cTextBold2XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBold2XL = cTextBold2XL.copyWith(color: cColorGrey4);

final TextStyle cTextBoldXL = _baseTextStyleXL.merge(_boldTextStyle);
final TextStyle cTextPrimaryBoldXL = cTextBoldXL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBoldXL = cTextBoldXL.copyWith(color: cColorGrey4);

final TextStyle cTextBold3XL = _baseTextStyle3XL.merge(_boldTextStyle);
final TextStyle cTextPrimaryBold3XL =
    cTextBold3XL.copyWith(color: cColorPrimary);
final TextStyle cTextAccentBold3XL = cTextBold3XL.copyWith(color: cColorGrey4);
