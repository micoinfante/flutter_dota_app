import 'package:dota_app/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ThemeType { Light, Dark }

class CustomTheme extends ChangeNotifier {
  ThemeData _themeData = darkTheme;
  ThemeType _themeType = ThemeType.Dark;

  ThemeData getTheme() {
    return _themeData;
  }

  void toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      _themeData = lightTheme;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      _themeData = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
