import 'package:evreka_case/injections/bindings/home_binding/home_binding.dart';
import 'package:evreka_case/injections/bindings/login_binding/login_binding.dart';
import 'package:evreka_case/injections/bindings/splash_binding/splash_binding.dart';
import 'package:evreka_case/presentation/views/home_view/view/home_view.dart';
import 'package:evreka_case/presentation/views/login_view/view/login_view.dart';
import 'package:evreka_case/presentation/views/splash_view/view/splash_view.dart';
import 'package:evreka_case/utilities/constants/route_constants/route_constants.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  List<GetPage> get pages => [
    GetPage(
      name: RouteConstants().initial,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteConstants().loginView,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),

    GetPage(
      name: RouteConstants().homeView,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}