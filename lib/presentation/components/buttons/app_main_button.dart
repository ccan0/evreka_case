import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:evreka_case/utilities/constants/text_style_constants/text_style_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMainButton extends StatelessWidget {
  const AppMainButton({Key? key, this.width, this.height, required this.buttonText, required this.onPressed, this.isActive}) : super(key: key);

  final double? width;
  final double? height;
  final String buttonText;
  final VoidCallback onPressed;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: (isActive ?? true) ? onPressed : null,
      child: Container(
        alignment: Alignment.center,
        width: width ?? 304.w,
        height: height ?? 43.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: (isActive ?? true) ? ColorConstants().green : ColorConstants().shadowColorGreen,
          boxShadow: [
            BoxShadow(
              color: ColorConstants().shadowColorGreen,
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          buttonText,
          style: TextStyleConstants().w700s20LightColor,
        ),
      ),
    );
  }
}
