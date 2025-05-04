import 'package:flutter/material.dart';

import 'localization_switcher.dart';

class LocalizationSwitcherProvider
    extends InheritedNotifier<LocalizationSwitcher> {
  const LocalizationSwitcherProvider({
    super.key,
    super.notifier,
    required super.child,
  });

  static LocalizationSwitcher? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LocalizationSwitcherProvider>()!
        .notifier!;
  }
}

extension LocalizationSwitcherX on BuildContext {
  LocalizationSwitcher get themeSwitcher =>
      LocalizationSwitcherProvider.of(this)!;
}
