import 'package:evreka_case/injections/internet_connectivity_controller/controller/internet_conectivity_controller.dart';
import 'package:evreka_case/presentation/views/splash_view/view_model/splash_view_model.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(InternetConnectivityController(), permanent: true);
    Get.lazyPut(() => SplashViewModel());
  }
}