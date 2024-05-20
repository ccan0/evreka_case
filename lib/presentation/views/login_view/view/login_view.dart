import 'package:evreka_case/presentation/components/buttons/app_main_button.dart';
import 'package:evreka_case/presentation/views/login_view/components/text_fields/password_text_field.dart';
import 'package:evreka_case/presentation/views/login_view/components/text_fields/username_text_field.dart';
import 'package:evreka_case/presentation/views/login_view/view_model/login_view_model.dart';
import 'package:evreka_case/utilities/constants/asset_constants/png_constants/png_constants.dart';
import 'package:evreka_case/utilities/constants/color_constants/color_constants.dart';
import 'package:evreka_case/utilities/constants/text_style_constants/text_style_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final LoginViewModel loginViewModel = Get.find<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: 360.w,
        height: 740.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorConstants().lightGrey, ColorConstants().white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100.h),
            Image.asset(PngConstants().logo, width: 135.w),
            SizedBox(height: 80.h),
            Text("Please enter your user name and password", style: TextStyleConstants().w400s20DarkGrey),
            SizedBox(height: 56.h),
            Obx(
              () => UsernameTextField(
                controller: loginViewModel.usernameController,
                isError: loginViewModel.isError.value,
                onChanged: loginViewModel.usernameFieldOnChanged,
                isWriting: loginViewModel.isWriting.value,
                focusNode: loginViewModel.usernameFieldFocusNode,
                clearButtonOnPressed: loginViewModel.usernameFieldClearOnPressed,
              ),
            ),
            SizedBox(height: 35.h),
            Obx(
              () => PasswordTextField(
                controller: loginViewModel.passwordController,
                isError: loginViewModel.isError.value,
                onChanged: loginViewModel.passwordFieldOnChanged,
                isPasswordVisible: loginViewModel.isPasswordVisible.value,
                passwordVisibleButtonOnPressed: loginViewModel.passwordVisibleButtonOnPressed,
              ),
            ),
            const Spacer(),
            Obx(
              () => AppMainButton(
                buttonText: 'LOGIN',
                isActive: !loginViewModel.isUsernameEmpty.value && !loginViewModel.isPasswordEmpty.value && !loginViewModel.isError.value,
                onPressed: () => loginViewModel.loginOnPressed(),
              ),
            ),
            SizedBox(height: 28.h),
          ],
        ),
      ),
    );
  }
}
