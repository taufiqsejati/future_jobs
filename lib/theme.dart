import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Note: Constant Values
const double defaultMargin = 24.0;

// Note: Colors

Color primaryColor = Color(0xff4141A4);
Color blackColor = Color(0xff272C2F);
Color whiteColor = Color(0xffFFFFFF);
Color redColor = Color(0xffFD4F56);
Color greyColor = Color(0xffB3B5C4);
Color transparentColor = Colors.transparent;
Color inputFieldColor = Color(0xffF1F0F5);

// Note: Text Styles
TextStyle splashTextStyle =
    GoogleFonts.poppins(color: whiteColor, fontSize: 32, fontWeight: semiBold);

TextStyle titleTextStyle =
    GoogleFonts.poppins(color: greyColor, fontSize: 16, fontWeight: medium);

TextStyle subTitleTextStyle =
    GoogleFonts.poppins(color: blackColor, fontSize: 24, fontWeight: semiBold);

TextStyle buttonTextStyle =
    GoogleFonts.poppins(color: whiteColor, fontWeight: medium);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: whiteColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: redColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: greyColor,
);

// Note: Font Weights
FontWeight light = FontWeight.w300;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w700;
FontWeight bold = FontWeight.bold;
