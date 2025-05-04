import 'package:flutter/material.dart';

abstract interface class IThemeRepository {
  ThemeMode getTheme();
  Future<void> setTheme(ThemeMode theme);
}
