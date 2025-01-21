import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  // Getter for the current theme mode
  ThemeMode get themeMode => _themeMode;

  // Toggle between light and dark themes
  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // Custom light theme
  ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
        bodyMedium: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  // Custom dark theme
  ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
        bodyMedium: TextStyle(color: Colors.grey, fontSize: 14),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.deepPurpleAccent,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
