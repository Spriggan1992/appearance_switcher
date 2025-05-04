import 'package:appearance_switcher/src/localization/domain/i_localization_repository.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class LocalizationRepository implements ILocalizationRepository {
  final SharedPreferences _localStorage;

  String get _key => 'localization';

  const LocalizationRepository(this._localStorage);
  @override
  Locale? getLocalization() {
    final result = _localStorage.getStringList(_key) ?? [];

    if (result.isNotEmpty) {
      return Locale(result.first, result.last);
    }

    return null;
  }

  @override
  Future<void> setILocalizationRepository(Locale locale) {
    return _localStorage.setStringList(_key, [
      locale.languageCode,
      locale.countryCode ?? '',
    ]);
  }
}
