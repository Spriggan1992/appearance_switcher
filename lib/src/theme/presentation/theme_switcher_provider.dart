import 'package:appearance_switcher/src/theme/presentation/theme_switcher.dart';
import 'package:flutter/material.dart';

class ThemeSwitcherProvider extends InheritedNotifier<ThemeSwitcher> {
  const ThemeSwitcherProvider({
    super.key,
    super.notifier,
    required super.child,
  });

  static ThemeSwitcher? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ThemeSwitcherProvider>()!
        .notifier!;
  }
}

extension ThemeSwitcherX on BuildContext {
  ThemeSwitcher get themeSwitcher => ThemeSwitcherProvider.of(this)!;
}
