import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
