import 'package:el_dorado/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

abstract final class ElDoradoTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: accentColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: neutralBackgroundColor,
        onSurface: Colors.black,
      ),
      scaffoldBackgroundColor: accentColor,
      useMaterial3: true,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
