// ignore_for_file: deprecated_member_use

import 'package:evreka_case/presentation/components/text_fields/main_text_field.dart';
import 'package:evreka_case/utilities/constants/asset_constants/svg_constants/svg_constants.dart';
import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key, required this.controller, required this.isError, required this.onChanged, required this.isPasswordVisible, required this.passwordVisibleButtonOnPressed}) : super(key: key);

  final TextEditingController controller;
  final bool isError;
  final Function(String?) onChanged;
  final bool isPasswordVisible;
  final VoidCallback passwordVisibleButtonOnPressed;

  @override
  Widget build(BuildContext context) {
    return MainTextField(
      controller: controller,
      isError: isError,
      labelText: "Password",
      onChanged: onChanged,
      suffixIcon: CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        onPressed: () => passwordVisibleButtonOnPressed(),
        child: SvgPicture.asset(
          SvgConstants().passwordVisibilityIcon,
          width: 24.w,
          height: 16.h,
          color: isPasswordVisible ? ColorConstants().yellow : ColorConstants().shadowColor,
        ),
      ),
      obscureText: !isPasswordVisible,
      enableSuggestions: false,
      autoCorrect: false,
    );
  }
}
