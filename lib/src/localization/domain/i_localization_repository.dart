import 'package:flutter/material.dart';

abstract interface class ILocalizationRepository {
  Locale? getLocalization();
  Future<void> setILocalizationRepository(Locale locale);
}
