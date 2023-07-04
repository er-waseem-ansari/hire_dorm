import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hire_dorm/src/constants/colors.dart';

class ThisTextTheme{  
  ThisTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: thisDarkColor),
    headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: thisDarkColor),
    headline3: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: thisDarkColor),
    headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: thisDarkColor),
    headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: thisDarkColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: thisDarkColor),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: thisDarkColor),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: thisWhiteColor),
    headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: thisWhiteColor),
    headline3: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: thisWhiteColor),
    headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: thisWhiteColor),
    headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: thisWhiteColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: thisWhiteColor),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: thisWhiteColor),
  );
}