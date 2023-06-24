import 'package:flutter/material.dart';
import 'package:my_portfolio/core/utils/app_colors.dart';

enum MyThemeKeys { LIGHT, DARK }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryBaseColor,
    onPrimary: AppColors.primaryBaseColor.withOpacity(.5),
    secondary: AppColors.secondaryBaseColor,
    onSecondary: AppColors.secondaryBaseColor.withOpacity(.8),
    error: AppColors.failureRed,
    onError: AppColors.failureRed.withOpacity(.5),
    background: AppColors.backgroundColor,
    onBackground: AppColors.backgroundColor.withOpacity(.5),
    surface: AppColors.color010101,
    onSurface: AppColors.color010101.withOpacity(.8),
  ));

  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryBaseColor,
        onPrimary: AppColors.primaryBaseColor.withOpacity(.5),
        secondary: AppColors.secondaryBaseColor,
        onSecondary: AppColors.secondaryBaseColor.withOpacity(.8),
        error: AppColors.failureRed,
        onError: AppColors.failureRed.withOpacity(.5),
        background: AppColors.backgroundColor,
        onBackground: AppColors.backgroundColor.withOpacity(.5),
        surface: AppColors.color010101,
        onSurface: AppColors.color010101.withOpacity(.8),
      ));

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
