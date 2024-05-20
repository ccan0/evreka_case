import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleConstants {
  static final TextStyleConstants _instance = TextStyleConstants._internal();

  factory TextStyleConstants() {
    return _instance;
  }

  TextStyleConstants._internal();

  TextStyle get w400s20DarkGrey => TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w400,
        fontSize: 20.sp,
        color: ColorConstants().darkGrey,
      );

  TextStyle get w400s16DarkGrey => TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
        color: ColorConstants().darkGrey,
      );

  TextStyle get w400s16ShadowColor => TextStyle(
    fontFamily: "Open Sans",
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: ColorConstants().shadowColor,
  );

  TextStyle get w400s12DarkGrey => TextStyle(
    fontFamily: "Open Sans",
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorConstants().darkGrey,
  );

  TextStyle get w400s12ErrorColor => TextStyle(
    fontFamily: "Open Sans",
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorConstants().errorColor,
  );

  TextStyle get w400s16ErrorColor => TextStyle(
    fontFamily: "Open Sans",
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: ColorConstants().errorColor,
  );

  TextStyle get w700s20DarkBlue => TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
        color: ColorConstants().darkBlue,
      );

  TextStyle get w700s20LightColor => TextStyle(
    fontFamily: "Open Sans",
    fontWeight: FontWeight.w700,
    fontSize: 20.sp,
    color: ColorConstants().lightColor,
  );

  TextStyle get w800s16DarkGrey => TextStyle(
        fontFamily: "Open Sans",
        fontWeight: FontWeight.w800,
        fontSize: 16.sp,
        color: ColorConstants().darkGrey,
      );
}
