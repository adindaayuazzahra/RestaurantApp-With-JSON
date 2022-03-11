import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFF4f3e9c);
final Color secondaryColor = Color(0xFFf7d561);
final Color bgColor = Color(0xFFfcfbf7);

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.playfairDisplay(
      fontSize: 99, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.playfairDisplay(
      fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
      GoogleFonts.playfairDisplay(fontSize: 49, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.playfairDisplay(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 0.25,
  ),
  headline5: GoogleFonts.playfairDisplay(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  ),
  headline6: GoogleFonts.playfairDisplay(
      fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.sourceSansPro(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      letterSpacing: 0.15),
  subtitle2: GoogleFonts.sourceSansPro(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.1,
  ),
  bodyText1: GoogleFonts.sourceSansPro(
      fontSize: 15, fontWeight: FontWeight.w700, letterSpacing: 0.5),
  bodyText2: GoogleFonts.sourceSansPro(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.sourceSansPro(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.25,
    //color: Colors.white,
  ),
  caption: GoogleFonts.sourceSansPro(
      fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5),
  overline: GoogleFonts.sourceSansPro(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.5,
      color: Colors.white),
);
