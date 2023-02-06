import 'package:flutter/material.dart';
import 'package:tasks/assets/fonts/fonts.dart';
import 'package:tasks/enum/app_theme.dart';
import 'package:tasks/theme/app_colors.dart';
import 'package:tasks/theme/app_text_styles.dart';

const String defaultFontFamily = Fonts.quicksand;

final Map<AppTheme, ThemeData> appThemes = {
  AppTheme.dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      backgroundColor: AppColors.background,
      fontFamily: defaultFontFamily,
      iconTheme: const IconThemeData(color: AppColors.backIcon),
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.transparent),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        titleLarge: AppTextStyles.titleLarge,
        // title
        displayMedium: AppTextStyles.displayMedium,
        // header
        bodyMedium: AppTextStyles.bodyMedium,
        // body
        labelLarge: AppTextStyles.labelLarge, // button
      )),
  AppTheme.light: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.grey,
      backgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.transparent),
      fontFamily: defaultFontFamily,
      iconTheme: const IconThemeData(color: AppColors.backIcon),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        titleLarge: AppTextStyles.titleLarge,
        // title
        displayMedium: AppTextStyles.displayMedium,
        // header
        bodyMedium: AppTextStyles.bodyMedium,
        // body
        labelLarge: AppTextStyles.labelLarge, // button
      )),
  AppTheme.kids: ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.purple,
      backgroundColor: AppColors.background,
      fontFamily: defaultFontFamily,
      iconTheme: const IconThemeData(color: AppColors.backIcon),
      disabledColor: AppColors.disableColor,
      hintColor: AppColors.hintText,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.transparent,
        iconTheme: IconThemeData(color: AppColors.backIcon),
      ),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryButtonColor,
        onPrimary: AppColors.darkPurple,
        secondary: AppColors.secondaryButtonColor,
        onSecondary: AppColors.gray60,
        error: AppColors.errorText,
        onError: AppColors.errorText,
        background: AppColors.primaryButtonColor,
        onBackground: AppColors.primaryButtonColor,
        surface: AppColors.primaryButtonColor,
        onSurface: AppColors.primaryButtonColor,
      )),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        headlineSmall: AppTextStyles.headlineSmall,
        titleLarge: AppTextStyles.titleLarge,
        // title
        displayMedium: AppTextStyles.displayMedium,
        // header
        bodyMedium: AppTextStyles.bodyMedium,
        // body
        labelLarge: AppTextStyles.labelLarge, // button
      ))
};
