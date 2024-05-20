import 'package:evreka_case/core/routes/app_pages.dart';
import 'package:evreka_case/injections/bindings/splash_binding/splash_binding.dart';
import 'package:evreka_case/presentation/views/splash_view/view/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'utilities/constants/route_constants/route_constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 740),
      child: GetMaterialApp(
        title: 'Evreka Case',
        debugShowCheckedModeBanner: false,
        initialRoute: RouteConstants().initial,
        getPages: AppPages().pages,
        home: const SplashView(),
        initialBinding: SplashBinding(),
      ),
    );
  }
}
