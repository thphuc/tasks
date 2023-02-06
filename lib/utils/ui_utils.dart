import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:tasks/app/cubit/app_cubit.dart';
import 'package:tasks/enum/app_theme.dart';
import 'package:tasks/theme/app_themes.dart';

/// Use this method to call a function after build() method is completed.
void onWidgetBuildDone(Function function) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    function();
  });
}

/// Retrieve the device screen size.
Size getScreenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

/// Retrieve the device screen width.
double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// Retrieve the device screen height.
double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// Get current theme
ThemeData getCurrentTheme(BuildContext context) {
  final AppCubit appCubit = context.read<AppCubit>();
  final ThemeData? themeData = appThemes[appCubit.state.appTheme];

  return themeData ?? appThemes[AppTheme.kids]!;
}