import 'package:evreka_case/injections/internet_connectivity_controller/controller/internet_conectivity_controller.dart';
import 'package:evreka_case/injections/internet_connectivity_controller/type/internet_connectivity_controller_interface.dart';
import 'package:evreka_case/utilities/constants/route_constants/route_constants.dart';
import 'package:evreka_case/utilities/extensions/internet_connectivity_extension/internet_connectivity_extension.dart';
import 'package:get/get.dart';

class SplashViewModel extends GetxController {

  final IInternetConnectivityController internetConnectivityController = Get.find<InternetConnectivityController>();

  @override
  void onInit() {
    redirectLoginPage();

    super.onInit();
  }

  void redirectLoginPage() {
    if(internetConnectivityController.connectivityStatus.hasInternetConnection) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Get.offAllNamed(RouteConstants().loginView);
      });
    }
  }
}