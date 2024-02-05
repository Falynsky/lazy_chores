import 'package:flutter/material.dart';
import 'package:lazy_chores/utils/exports.dart';

extension AppLocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
