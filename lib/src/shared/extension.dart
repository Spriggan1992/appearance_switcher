import 'package:appearance_switcher/appearance_switcher.dart';
import 'package:flutter/material.dart';

extension AppearanceSwitcherX on BuildContext {
  LocalizationSwitcher get localizationSwitcher =>
      LocalizationSwitcherProvider.of(this)!;

  ThemeSwitcher get themeSwitcher => ThemeSwitcherProvider.of(this)!;
}
