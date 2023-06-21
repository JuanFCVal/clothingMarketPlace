import 'package:flutter/material.dart';

ThemeData lightTheme() {
  const primaryColor = Color.fromRGBO(150, 7, 200, 1);

  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: MaterialColor(
        primaryColor.value,
        const <int, Color>{
          50: Color.fromRGBO(232, 215, 239, 1),
          100: Color.fromRGBO(204, 162, 222, 1),
          200: Color.fromRGBO(177, 110, 205, 1),
          300: Color.fromRGBO(150, 7, 200, 1),
          400: Color.fromRGBO(128, 2, 173, 1),
          500: primaryColor,
          600: Color.fromRGBO(98, 0, 142, 1),
          700: Color.fromRGBO(84, 0, 122, 1),
          800: Color.fromRGBO(70, 0, 102, 1),
          900: Color.fromRGBO(56, 0, 82, 1),
        },
      ),
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(251, 251, 251, 1),
    primaryColor: primaryColor,
  );
}
