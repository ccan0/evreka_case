import 'package:evreka_case/core/exception_handler/handler/exception_handler.dart';
import 'package:evreka_case/services/authorization_service/service/authorization_service.dart';
import 'package:evreka_case/services/authorization_service/type/authorization_service_interface.dart';
import 'package:evreka_case/utilities/constants/route_constants/route_constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final IAuthorizationService authorizationService = AuthorizationService();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoginSuccess = false;

  RxBool isError = false.obs;

  RxBool isPasswordVisible = false.obs;
  RxBool isPasswordEmpty = true.obs;

  RxBool isWriting = false.obs;
  RxBool isUsernameEmpty = true.obs;
  FocusNode usernameFieldFocusNode = FocusNode();

  void passwordVisibleButtonOnPressed() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void passwordFieldOnChanged(String? value) {
    isError.value = false;

    isPasswordEmpty.value = passwordController.text.isEmpty;
  }

  void usernameFieldClearOnPressed() {
    usernameController.clear();

    isWriting.value = false;

    isUsernameEmpty.value = usernameController.text.isEmpty;
  }

  void usernameFieldOnChanged(String? value){
    isError.value = false;

    isUsernameEmpty.value = usernameController.text.isEmpty;

    isWriting.value = usernameFieldFocusNode.hasFocus  && !isUsernameEmpty.value;
  }

  void loginOnPressed() async {
    try {
      isLoginSuccess = await authorizationService.signIn(email: usernameController.text, password: passwordController.text);

      if(isLoginSuccess) {
        Get.offAllNamed(RouteConstants().homeView);
      }
    } on Exception catch (exception) {
      isError.value = true;

      if(exception is FirebaseAuthException) {
        ExceptionHandler().handleException(exceptionMessage: exception.message ?? "");
      } else {
        ExceptionHandler().handleException(exceptionMessage: exception.toString());
      }

    }
  }
}
