import 'package:appearance_switcher/src/localization/domain/i_localization_repository.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class LocalizationSwitcher extends ChangeNotifier {
  final ILocalizationRepository _localizationRepository;
  final Locale initialLocale;
  final List<Locale> supportedLocales;
  late Locale _locale;

  LocalizationSwitcher(
    this._localizationRepository, {
    required this.initialLocale,
    required this.supportedLocales,
  }) {
    _locale = _localizationRepository.getLocalization() ?? initialLocale;
  }

  Locale get locale => _locale;
  List<Locale> get supportedLocalesList => supportedLocales;

  void selectLocalization(Locale locale) async {
    if (locale == _locale) {
      return;
    }

    final selectedLocale = supportedLocales.singleWhereOrNull(
      (locale) => locale == _locale,
    );
    if (selectedLocale == null) {
      throw Exception('Locale $locale is not supported');
    }

    await _localizationRepository.setILocalizationRepository(_locale);

    notifyListeners();
  }
}
