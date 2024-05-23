import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16.0),
    bodyMedium: TextStyle(fontSize: 14.0),
    labelLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(fontSize: 12.0),
  );

  static ThemeData themeData = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: textTheme,
  );
}
