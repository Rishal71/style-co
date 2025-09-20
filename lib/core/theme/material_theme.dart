import 'package:flutter/material.dart';

const bgColor = Color.fromARGB(255, 234, 228, 223);
final activeColor = const Color.fromARGB(255, 255, 253, 252);

final appTheme = ThemeData(
  scaffoldBackgroundColor: bgColor,
  primaryColor: activeColor,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color.fromARGB(255, 255, 255, 255),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
  ),
  textTheme: TextTheme(titleLarge: TextStyle(color: Colors.red)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.brown,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
    ),
  ),
);
