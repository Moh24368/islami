import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: black,
    ),
  );
  static const Color primary = Color(0xFFE2BE7F);
  static const Color black = Color(0xFF202020);
  static const Color white = Color(0xFFFFFFFF);

  


}
