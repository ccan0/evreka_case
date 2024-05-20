// ignore_for_file: deprecated_member_use

import 'package:evreka_case/presentation/components/text_fields/main_text_field.dart';
import 'package:evreka_case/utilities/constants/asset_constants/svg_constants/svg_constants.dart';
import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField(
      {Key? key,
      required this.controller,
      required this.isError,
      required this.onChanged,
      required this.isWriting,
      required this.clearButtonOnPressed, required this.focusNode})
      : super(key: key);

  final TextEditingController controller;
  final bool isError;
  final Function(String?) onChanged;
  final bool isWriting;
  final VoidCallback clearButtonOnPressed;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return MainTextField(
      controller: controller,
      isError: isError,
      labelText: "Username",
      onChanged: onChanged,
      focusNode: focusNode,
      suffixIcon: isWriting
          ? CupertinoButton(
              minSize: 0,
              padding: EdgeInsets.zero,
              child: SvgPicture.asset(
                SvgConstants().clearIcon,
                width: 22.w,
                height: 22.w,
                color: ColorConstants().shadowColor,
              ),
              onPressed: () => clearButtonOnPressed(),
            )
          : null,
    );
  }
}
