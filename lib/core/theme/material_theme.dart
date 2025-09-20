import 'package:flutter/material.dart';

const bgColor = Color.fromARGB(255, 255, 119, 8);
final activeColor = const Color.fromARGB(255, 255, 253, 252);

final appTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFFF5E6D3),
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
