import 'package:appearance_switcher/src/theme/presentation/theme_switcher_provider.dart';
import 'package:appearance_switcher/src/theme/presentation/theme_switcher.dart';
import 'package:flutter/material.dart';

class ThemeBuilder extends StatelessWidget {
  final ThemeSwitcher notifier;
  final Widget Function(BuildContext) builder;

  const ThemeBuilder({
    super.key,
    required this.notifier,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherProvider(
      notifier: notifier,
      child: Builder(builder: builder),
    );
  }
}
