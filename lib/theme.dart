import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appTheme {
  static const MaterialColor myRed = MaterialColor(
    _myRedValue,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(_myRedValue),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );
  static const int _myRedValue = 0xFFF76B6B;

  static const Color background = Color(0XFF272727);
  static const Color textTitleCard = Color(0XFF1D2623);
  static const Color textDescriptionCard = Color(0XFF2E303C);
  static const Color dateCard = Color(0XFF6C6C6C);

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primaryColor: myRed,
    primarySwatch: myRed,
    highlightColor: myRed,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: myRed,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(
      ThemeData.dark().textTheme,
    ),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          elevation: 0,
          backgroundColor: background,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
    unselectedWidgetColor: Colors.transparent,
  );
}
