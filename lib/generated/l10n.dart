// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Warning`
  String get alertWarning {
    return Intl.message(
      'Warning',
      name: 'alertWarning',
      desc: '',
      args: [],
    );
  }

  /// `No connection, please check your internet`
  String get alertNoConnection {
    return Intl.message(
      'No connection, please check your internet',
      name: 'alertNoConnection',
      desc: '',
      args: [],
    );
  }

  /// `Failed`
  String get alertFailed {
    return Intl.message(
      'Failed',
      name: 'alertFailed',
      desc: '',
      args: [],
    );
  }

  /// `Request time out`
  String get alertTimeOut {
    return Intl.message(
      'Request time out',
      name: 'alertTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get alertConfirm {
    return Intl.message(
      'Confirm',
      name: 'alertConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get alertCancel {
    return Intl.message(
      'Cancel',
      name: 'alertCancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get alertOk {
    return Intl.message(
      'Ok',
      name: 'alertOk',
      desc: '',
      args: [],
    );
  }

  /// `Register Success, Enjoy to use this app.`
  String get alertLogin {
    return Intl.message(
      'Register Success, Enjoy to use this app.',
      name: 'alertLogin',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get alertSuccess {
    return Intl.message(
      'Success',
      name: 'alertSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Success update Profile`
  String get alertSuccessUpdateProfile {
    return Intl.message(
      'Success update Profile',
      name: 'alertSuccessUpdateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get alertLogout {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'alertLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to quit the app?`
  String get alertQuit {
    return Intl.message(
      'Are you sure you want to quit the app?',
      name: 'alertQuit',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birthDate {
    return Intl.message(
      'Birth Date',
      name: 'birthDate',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? Register`
  String get labelRegister {
    return Intl.message(
      'Don\'t have an account? Register',
      name: 'labelRegister',
      desc: '',
      args: [],
    );
  }

  /// `Email cannot be empty`
  String get loginEmailEmpty {
    return Intl.message(
      'Email cannot be empty',
      name: 'loginEmailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Wrong format email`
  String get loginEmailWrong {
    return Intl.message(
      'Wrong format email',
      name: 'loginEmailWrong',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get loginPasswordEmpty {
    return Intl.message(
      'Password cannot be empty',
      name: 'loginPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password minimum 8 character`
  String get loginPasswordWrong {
    return Intl.message(
      'Password minimum 8 character',
      name: 'loginPasswordWrong',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get registerGenderFemale {
    return Intl.message(
      'Female',
      name: 'registerGenderFemale',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get registerGenderMale {
    return Intl.message(
      'Male',
      name: 'registerGenderMale',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login?`
  String get registerBack {
    return Intl.message(
      'Back to Login?',
      name: 'registerBack',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get photoCam {
    return Intl.message(
      'Camera',
      name: 'photoCam',
      desc: '',
      args: [],
    );
  }

  /// `Photo Library`
  String get photoLib {
    return Intl.message(
      'Photo Library',
      name: 'photoLib',
      desc: '',
      args: [],
    );
  }

  /// `Province`
  String get province {
    return Intl.message(
      'Province',
      name: 'province',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message(
      'Sign Out',
      name: 'signOut',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Take a Picture`
  String get takePicture {
    return Intl.message(
      'Take a Picture',
      name: 'takePicture',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get updateProfile {
    return Intl.message(
      'Update Profile',
      name: 'updateProfile',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get role {
    return Intl.message(
      'Role',
      name: 'role',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
