import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Db {
  static late SharedPreferences prefs;
  static const String _student = "student";
  static const String _token = "token";
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void setToken(String value) {
    prefs.setString(_token, value);
  }

  static String? getToken() {
    return prefs.getString(_token);
  }

  static void setLogValue() async {
    prefs.setBool('isLoggedIn', true);
  }

  static Future<bool?> getLogValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    bool? logValue = preferences.getBool('isLoggedIn');
    return logValue;
  }
}
