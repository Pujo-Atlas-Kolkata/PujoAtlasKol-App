import 'package:flutter/material.dart';
import 'l10n.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsExt on BuildContext {
  AppLocalizations? get l10n => AppLocalizations.of(this);
}
