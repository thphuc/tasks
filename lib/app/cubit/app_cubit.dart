import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tasks/app/cubit/app_state.dart';
import 'package:tasks/enum/app_languages.dart';
import 'package:tasks/enum/app_theme.dart';

class AppCubit extends HydratedCubit<AppState> {
  AppCubit({required AppTheme appTheme, required AppLanguage appLanguage})
      : super(const AppState(
            appTheme: AppTheme.kids, appLanguage: AppLanguage.vi));

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    final String themeName = json['theme'];
    final String languageName = json['language'];

    AppTheme theme = AppTheme.values.firstWhere(
        (theme) => theme.name == themeName,
        orElse: () => AppTheme.kids);

    AppLanguage language = AppLanguage.values.firstWhere(
        (language) => language.name == languageName,
        orElse: () => AppLanguage.vi);

    return AppState(appTheme: theme, appLanguage: language);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    final Map<String, dynamic> appState = {
      'theme': state.appTheme.toString(),
      'language': state.appLanguage.toString(),
    };

    return appState;
  }

  void changeTheme({required AppTheme theme}) {
    emit(AppState(appTheme: theme, appLanguage: state.appLanguage));
  }

  void changeLanguage({required AppLanguage language}) {
    emit(AppState(appLanguage: language, appTheme: state.appTheme));
  }

  void switchLanguage() {
    final AppLanguage newLanguage =
        state.appLanguage == AppLanguage.en ? AppLanguage.vi : AppLanguage.en;
    emit(AppState(appTheme: state.appTheme, appLanguage: newLanguage));
  }
}
