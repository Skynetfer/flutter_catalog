import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contants.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: kLightColor,
      buttonColor: kDarkColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: outlineInputBorder,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: kDarkLightColor,
        buttonColor: kLightDarkColor,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: outlineInputBorder,
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        ),
      );
  static Color kLightColor = Color(0xFFF5F5F5);
  static Color kDarkLightColor = Color(0xFF27272A);
  static Color kDarkColor = Color(0xFF403B58);
  static Color kLightDarkColor = Color(0xFF6366F1);
}
