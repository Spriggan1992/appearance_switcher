import 'package:appearance_switcher/src/theme/domain/i_theme_repository.dart';
import 'package:flutter/material.dart';

class ThemeSwitcher extends ChangeNotifier {
  final IThemeRepository _themeRepository;
  ThemeMode _themeMode = ThemeMode.light;

  ThemeSwitcher(this._themeRepository) {
    _themeMode = _themeRepository.getTheme();
  }

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    _themeRepository.setTheme(_themeMode);
    notifyListeners();
  }
}
