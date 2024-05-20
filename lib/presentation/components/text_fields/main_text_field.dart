// ignore_for_file: deprecated_member_use

import 'package:evreka_case/utilities/constants/asset_constants/svg_constants/svg_constants.dart';
import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:evreka_case/utilities/constants/text_style_constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    Key? key,
    required this.controller,
    required this.isError,
    required this.labelText,
    required this.onChanged,
    this.suffixIcon,
    this.obscureText,
    this.autoCorrect,
    this.enableSuggestions, this.focusNode,
  }) : super(key: key);

  final TextEditingController controller;
  final bool isError;
  final String labelText;
  final Function(String?) onChanged;
  final Widget? suffixIcon;

  final bool? obscureText;
  final bool? autoCorrect;
  final bool? enableSuggestions;

  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: controller,
      cursorColor: ColorConstants().yellow,
      style: isError ? TextStyleConstants().w400s16ErrorColor : TextStyleConstants().w400s16DarkGrey,
      onChanged: (value) => onChanged(value),
      obscuringCharacter: "*",
      obscureText: obscureText ?? false,
      autocorrect: autoCorrect ?? true,
      enableSuggestions: enableSuggestions ?? true,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyleConstants().w400s16ShadowColor,
        floatingLabelStyle: isError ? TextStyleConstants().w400s12ErrorColor : TextStyleConstants().w400s12DarkGrey,
        border: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().shadowColor)),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().shadowColor)),
        errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().errorColor)),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorConstants().yellow)),
        errorText: isError ? "" : null,
        suffix: isError ? SizedBox(
          width: 20.w,
          height: 18.h,
          child: SvgPicture.asset(
            SvgConstants().errorIcon,
            width: 20.w,
            height: 18.h,
            color: ColorConstants().errorColor,
          ),
        ) : suffixIcon,
      ),
    );
  }
}
