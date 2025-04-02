import 'package:flutter/material.dart';
import 'package:mtg_token_manager/presentation/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightBlueFaerie,
      secondary: AppColors.darkBlueFaerie,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.darkBlueFaerie,
      secondary: AppColors.lightBlueFaerie,
    ),
  );
}
