import 'package:evreka_case/utilities/constants/asset_constants/png_constants/png_constants.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  //final SplashViewModel splashViewModel = Get.find<SplashViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(PngConstants().logo),
      ),
    );
  }
}
