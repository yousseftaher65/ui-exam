import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTwoColors {
  static const Color primaryColor = Color(0xff371B34);
  static const Color secondaryColor = Color(0xff027A48);
  static const Color accentColor = Color(0xff2E2E5D);
  static const Color smallTextColor = Color(0xff6A6A8B);
  static const Color whiteColor = Color(0xffFDF2FA);
  static const Color blackColor = Color(0xff000000);

}

class AppTwoTextStyle {
  static  TextStyle title = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppTwoColors.primaryColor,
  );
  static  TextStyle category = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppTwoColors.blackColor,
  );
  static  TextStyle more = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppTwoColors.secondaryColor,
  );
  static  TextStyle body = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppTwoColors.blackColor,
  );
}
