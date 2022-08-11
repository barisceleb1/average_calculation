import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const primaryColor = Colors.indigo;
  static const String titleText = 'Ortalama Hesapla';
  static final TextStyle titleStyle = GoogleFonts.quicksand(
      fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white);
  static final TextStyle titleStyle2 = GoogleFonts.quicksand(
      fontSize: 26, fontWeight: FontWeight.w700, color: Colors.indigo);
  static final TextStyle titleStyle3 = GoogleFonts.quicksand(
      fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white);
  static  BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle numbersofLessons = GoogleFonts.quicksand(
      fontSize: 20, fontWeight: FontWeight.w700, color: Colors.orange);
  static final TextStyle averageFigures = GoogleFonts.quicksand(
      fontSize: 56, fontWeight: FontWeight.w700, color: Colors.orange);
  static final TextStyle averageWriting = GoogleFonts.quicksand(
      fontSize: 20, fontWeight: FontWeight.w700, color: Colors.orange.shade700);
  static final EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 10,
  );
}