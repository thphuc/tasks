import 'package:equatable/equatable.dart';
import 'package:tasks/enum/app_languages.dart';
import 'package:tasks/enum/app_theme.dart';

class AppState extends Equatable {
  final AppTheme? appTheme;
  final AppLanguage? appLanguage;

  const AppState({
    this.appTheme,
    this.appLanguage,
  });

  @override
  List<Object?> get props => [
        appTheme,
        appLanguage,
      ];

  AppState copyWith({AppTheme? appTheme, AppLanguage? appLanguage}) {
    return AppState(
      appTheme: appTheme ?? this.appTheme,
      appLanguage: appLanguage ?? this.appLanguage,
    );
  }
}
