import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme:  ColorScheme.light(
      background: Colors.white,
    primary: Colors.black,
    secondary: Colors.grey.shade400,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme:  const ColorScheme.dark(
    background: Colors.black,
    primary: Colors.white,
    secondary: Colors.white,
  )
);
