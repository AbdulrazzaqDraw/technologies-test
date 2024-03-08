import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFonts {
  static TextStyle regularFontUbuntu = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Ubuntu',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle mediumFontUbuntu = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'Ubuntu',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle semiBoldFontUbuntu = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Ubuntu',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle boldFontUbuntu = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'Ubuntu',
    height: 1.2,
    fontSize: 16.sp,
  );

  static TextStyle regularFontRoboto = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle mediumFontRoboto = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle semiBoldFontRoboto = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
    height: 1.2,
    fontSize: 16.sp,
  );
  static TextStyle boldFontRoboto = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto',
    height: 1.2,
    fontSize: 16.sp,
  );
}

class MyColors {
  static const Color errorColor = Color(0xffF26666);
  static const Color warningColor = Color(0xffFBBC05);
  static const Color successColor = Color(0xff20b46f);
  static Color primaryColor = const Color(0xffE83433);
  static Color secondaryColor = const Color(0xff363636);

  static Color borderColor = const Color(0xffE3E3E3);
  static Color hintColor = const Color(0xffC5C5C5);
  static Color white = const Color(0xffFFFFFF);
  static Color background = const Color(0xffFCFCFC);
  static Color backgroundButton = const Color(0xffF7F7F7);
  static Color backgroundTextField = const Color(0xffF0F0F0);
  static Color black = const Color(0xff000000);
  static Color dark = const Color(0xff363636);
  static Color accent = const Color(0xffE83433);
  static Color grey2 = const Color(0xff858585);
  static Color grey = const Color(0xffAEAEAE);
  static Color grey3 = const Color(0xff979797);
  static Color lightGrey = const Color(0xffF0F0F0);
  static Color textFieldHintColor = const Color(0xffA1A1A1);
  static Color textFieldHintColor2 = const Color(0xff878787);
  static Color borderTextFiled = const Color(0xffD8DADC);
  static Color iconColor = const Color(0xff000000).withOpacity(0.1);
  static Color greyTextColor = const Color(0xffB1B1B1);

  static BoxShadow boxShadow = BoxShadow(
    color: MyColors.black.withOpacity(0.08),
    offset: Offset(0, 4.h),
    blurRadius: 15.r,
    spreadRadius: 5.r,
  );
  static Gradient primaryLinearGradient = const LinearGradient(colors: [
    Color(0xffC29582),
    Color(0xffEBC7AD),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

  static Gradient secondaryLinearGradient = LinearGradient(colors: [
    Color(0xffffffff).withOpacity(0.2),
    Color(0xff000000).withOpacity(0.5),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
