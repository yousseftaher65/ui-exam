import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppOneColors {
  static const Color primaryColor = Color(0xff010104);
  static const Color secondaryColor = Color(0xff4838D1);
  static const Color accentColor = Color(0xff2E2E5D);
  static const Color smallTextColor = Color(0xff6A6A8B);
  static const Color whiteColor = Color(0xffFFFFFF);
}

class AppOneTextStyle {
  static  TextStyle titel = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppOneColors.primaryColor,
  );
  static  TextStyle category = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppOneColors.accentColor,
  );
  static  TextStyle more = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppOneColors.secondaryColor,
  );
  static  TextStyle body = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppOneColors.accentColor,
  );
}
