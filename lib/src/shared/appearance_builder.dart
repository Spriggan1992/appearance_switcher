import 'package:appearance_switcher/appearance_switcher.dart';
import 'package:appearance_switcher/src/localization/presentation/localization_switcher_provider.dart';
import 'package:appearance_switcher/src/theme/presentation/theme_switcher_provider.dart';
import 'package:flutter/material.dart';

class AppearanceBuilder extends StatelessWidget {
  final ThemeSwitcher themeSwitcher;
  final LocalizationSwitcher localizationSwitcher;
  final Widget Function(BuildContext) builder;

  const AppearanceBuilder({
    super.key,
    required this.themeSwitcher,
    required this.localizationSwitcher,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherProvider(
      notifier: themeSwitcher,
      child: LocalizationSwitcherProvider(
        notifier: localizationSwitcher,
        child: Builder(builder: builder),
      ),
    );
  }
}
