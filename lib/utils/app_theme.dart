import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FinanceAppTheme {
  static ThemeData dark() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: darkTextTheme,
    );
  }

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color(0xFFA0A0BA),
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 64,
      height: 1.15,
      fontWeight: FontWeight.bold,
      color: const Color(0xFFFFFFFF),
    ),
  );
}
