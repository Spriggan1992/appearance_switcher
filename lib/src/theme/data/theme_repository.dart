import 'package:appearance_switcher/src/theme/domain/i_theme_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class ThemeRepository implements IThemeRepository {
  final SharedPreferences _localStorage;

  /// Theme until the user picks one, e.g. on the first launch.
  final ThemeMode defaultTheme;

  String get _key => 'theme';

  const ThemeRepository(
    this._localStorage, {
    this.defaultTheme = ThemeMode.light,
  });

  @override
  ThemeMode getTheme() {
    final result = _localStorage.getString(_key);

    return ThemeMode.values.firstWhere(
      (element) => element.toString() == result,
      orElse: () => defaultTheme,
    );
  }

  @override
  Future<void> setTheme(ThemeMode theme) {
    return _localStorage.setString(_key, theme.toString());
  }
}
