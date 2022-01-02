import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinanceAppTheme {
  static ThemeData dark() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: darkTextTheme,
    );
  }

  static TextTheme darkTextTheme = TextTheme(
      bodyText1: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: const Color(0xFFC9B6E9),
      ),
      headline1: GoogleFonts.openSans(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFC9B6E9),
      ));
}
