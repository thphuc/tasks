import 'package:flutter/material.dart';
import 'package:tasks/theme/app_colors.dart';
import 'package:tasks/theme/app_dimens.dart';
import 'package:tasks/theme/app_themes.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle buttonText = const TextStyle(
      color: AppColors.white,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.buttonTextSize,
      fontWeight: FontWeight.w500);

  static const TextStyle headlineLarge = TextStyle(
      color: AppColors.white,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.headlineLarge,
      fontWeight: FontWeight.w900);

  static const TextStyle headlineMedium = TextStyle(
      color: AppColors.white,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.headerMedium,
      fontWeight: FontWeight.w700);

  static const TextStyle headlineSmall = TextStyle(
      color: AppColors.white,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.headerSmall,
      fontWeight: FontWeight.w700);

  static const TextStyle appBar = TextStyle(
      color: AppColors.black,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.appBarTextSize,
      fontWeight: FontWeight.w600);

  static const TextStyle appContent = TextStyle(
      color: AppColors.contentText,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.inputTextSize,
      fontWeight: FontWeight.w400);

  static const TextStyle iconButtonText = TextStyle(
      color: AppColors.white,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.buttonTextSize,
      fontWeight: FontWeight.w600);

  static const TextStyle errorText = TextStyle(
      color: AppColors.errorText,
      fontFamily: defaultFontFamily,
      fontSize: AppDimens.contentTextSize,
      fontWeight: FontWeight.w400);

  static const TextStyle titleLarge = TextStyle(
      color: AppColors.black,
      fontSize: AppDimens.phoneTitleTextSize,
      fontWeight: FontWeight.w600,
      fontFamily: defaultFontFamily);

  static const TextStyle displayMedium = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontSize: AppDimens.phoneHeaderTextSize,
      fontFamily: defaultFontFamily);

  static const TextStyle bodyMedium = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontSize: AppDimens.phoneBodyTextSize,
      fontFamily: defaultFontFamily);

  static const TextStyle labelLarge = TextStyle(
      color: AppColors.black,
      fontSize: AppDimens.phoneButtonTextSize,
      fontWeight: FontWeight.w600,
      fontFamily: defaultFontFamily);

  static const TextStyle clickable = TextStyle(
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: AppColors.purple,
      fontSize: AppDimens.clickableTextSize,
      fontFamily: defaultFontFamily);
}
