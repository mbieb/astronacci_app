import 'dart:math';

import 'package:astronacci_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:astronacci_app/generated/l10n.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommonUtils {
  static const String defaultCountryCallingCode = '+62';

  static final RegExp _emailRegExp = RegExp(
    r'^([A-Z|a-z|0-9](\.|_){0,1})+[A-Z|a-z|0-9]\@([A-Z|a-z|0-9])+((\.){0,1}[A-Z|a-z|0-9]){2}\.[a-z]{2,3}$',
  );

  static final RegExp _passwordRegExp = RegExp(
    r'^((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,64})$',
  );

  static final RegExp _phoneRegExp = RegExp(r'^(?:[+0])?[0-9]{8,15}$');

  static int dayLength(DateTime fromDate, DateTime toDate) {
    return DateTime(fromDate.year, fromDate.month, fromDate.day)
            .difference(DateTime(toDate.year, toDate.month, toDate.day))
            .abs()
            .inDays +
        1;
  }

  static String? dateFormat(String pattern, DateTime? date) {
    DateFormat format = DateFormat(
      pattern,
    );
    String? sDate;
    if (date != null) sDate = format.format(date);
    return sDate;
  }

  static String? dateToStringFormated(DateTime? date) {
    if (date == null) return null;
    return DateFormat('yyyy-MM-dd HH:mm').format(date);
  }

  static DateTime? stringToDateFormated(String? date) {
    if (date == null) return null;
    return DateFormat("dd-MM-yyyy").parse(date);
  }

  static String timeOfDayToString(TimeOfDay time) {
    var hour = time.hour.toString();
    var minute = time.minute.toString();
    if (int.parse(hour) < 10) {
      hour = "0$hour";
    }
    if (int.parse(minute) < 10) {
      minute = "0$minute";
    }
    return "$hour : $minute";
  }

  static List<String> gender(int gender) {
    return gender == 1
        ? ['Male', 'Cowok', 'Pria', 'Laki-laki']
        : ['Female', 'Cewek', 'Wanita', 'Perempuan'];
  }

  static Either<bool, bool> containsValue(
      Map<String, dynamic> map, String comparedTo) {
    bool isContains = false;
    map.forEach((key, value) {
      if (!isContains) {
        isContains =
            value.toString().toLowerCase().contains(comparedTo.toLowerCase());
      }
    });
    return isContains ? right(true) : left(false);
  }

  static String currencyFormat(double amount) {
    NumberFormat format = NumberFormat("#,##0.00", "en_US");
    if (amount.isNegative) return '-Rp. ${format.format(amount.abs())}';

    return 'Rp. ${format.format(amount)}';
  }

  static bool validateEmail(String value) {
    return _emailRegExp.hasMatch(value);
  }

  static bool validatePassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }

  static bool validatePhone(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }

  static String replaceSpace(String value) {
    return value.replaceAll(' ', '%20');
  }

  static Either<String, String> getInitials(String value) {
    if (value.isNotEmpty) {
      return right(value
          .trim()
          .split(' ')
          .map((e) => e[0])
          .take(2)
          .join()
          .toUpperCase());
    }
    return left('');
  }

  static DateTime firstDateOfWeek(DateTime current) {
    switch (current.weekday) {
      case DateTime.tuesday:
        return current.subtract(const Duration(days: 1));
      case DateTime.wednesday:
        return current.subtract(const Duration(days: 2));
      case DateTime.thursday:
        return current.subtract(const Duration(days: 3));
      case DateTime.friday:
        return current.subtract(const Duration(days: 4));
      case DateTime.saturday:
        return current.subtract(const Duration(days: 5));
      case DateTime.sunday:
        return current.subtract(const Duration(days: 6));
      default:
        return current;
    }
  }

  static DateTime lastDateOfWeek(DateTime current) {
    switch (current.weekday) {
      case DateTime.saturday:
        return current.add(const Duration(days: 1));
      case DateTime.friday:
        return current.add(const Duration(days: 2));
      case DateTime.thursday:
        return current.add(const Duration(days: 3));
      case DateTime.wednesday:
        return current.add(const Duration(days: 4));
      case DateTime.tuesday:
        return current.add(const Duration(days: 5));
      case DateTime.monday:
        return current.add(const Duration(days: 6));
      default:
        return current;
    }
  }

  static String getRandomString(int length) {
    const chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    Random rnd = Random();
    return String.fromCharCodes(Iterable.generate(
        length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
  }

  static bool hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  /// Checks if string is email.
  static bool isEmail(String s) => hasMatch(s,
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  /// Checks if string is phone number.
  static bool isPhoneNumber(String s) {
    if (s.length > 16 || s.length < 9) return false;
    return hasMatch(s, r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  }

  List<DropdownText> getDummyProvince() {
    return [
      const DropdownText(
        id: "31",
        text: "DKI JAKARTA",
      ),
      const DropdownText(
        id: "32",
        text: "JAWA BARAT",
      ),
      const DropdownText(
        id: "33",
        text: "JAWA TENGAH",
      ),
      const DropdownText(
        id: "34",
        text: "DI YOGYAKARTA",
      ),
    ];
  }

  List<DropdownText> getGendeRList() {
    return [
      DropdownText(id: "0", text: I10n.current.registerGenderFemale),
      DropdownText(id: "1", text: I10n.current.registerGenderMale),
    ];
  }
}
