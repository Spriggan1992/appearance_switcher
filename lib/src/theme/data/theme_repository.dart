import 'package:appearance_switcher/src/theme/domain/i_theme_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class ThemeRepository implements IThemeRepository {
  final SharedPreferences _localStorage;

  String get _key => 'theme';

  const ThemeRepository(this._localStorage);
  @override
  ThemeMode getTheme() {
    final result = _localStorage.getString(_key);

    if (result == null) {
      return ThemeMode.light;
    }

    return ThemeMode.values.firstWhere(
      (element) => element.toString() == result,
      orElse: () => ThemeMode.light,
    );
  }

  @override
  Future<void> setTheme(ThemeMode theme) {
    return _localStorage.setString(_key, theme.toString());
  }
}
