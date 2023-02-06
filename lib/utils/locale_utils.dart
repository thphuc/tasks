import 'package:flutter/material.dart';
import 'package:tasks/enum/app_languages.dart';

Locale getAppLocale({AppLanguage? appLanguage = AppLanguage.en}) {
  return Locale(appLanguage!.name);
}