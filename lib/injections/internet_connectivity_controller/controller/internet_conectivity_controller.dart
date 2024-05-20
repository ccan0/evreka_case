import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:evreka_case/injections/internet_connectivity_controller/type/internet_connectivity_controller_interface.dart';
import 'package:evreka_case/utilities/constants/route_constants/route_constants.dart';
import 'package:evreka_case/utilities/extensions/internet_connectivity_extension/internet_connectivity_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InternetConnectivityController extends GetxController implements IInternetConnectivityController {
  @override
  void onInit() async{
    functionsOfConnectivityStatus = {
      ConnectivityResult.none: noneInternetConnection,
      ConnectivityResult.bluetooth: noneInternetConnection,
      ConnectivityResult.ethernet: noneInternetConnection,
      ConnectivityResult.mobile: whenInternetCome,
      ConnectivityResult.other: noneInternetConnection,
      ConnectivityResult.vpn: whenInternetCome,
      ConnectivityResult.wifi: whenInternetCome,
    };

    await checkInternetConnectivity();

    listenInternetConnectivity();

    super.onInit();
  }

  Map<ConnectivityResult, VoidCallback> functionsOfConnectivityStatus = {};

  @override
  ConnectivityResult connectivityStatus = ConnectivityResult.none;

  @override
  Future<void> checkInternetConnectivity() async{
    connectivityStatus = await Connectivity().checkConnectivity();

    if(!connectivityStatus.hasInternetConnection) {
      Get.defaultDialog(
        barrierDismissible: false,
        titlePadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
        title: "We Couldn't Find an Internet Connection",
        middleText: "After completing your internet connection, you can continue using the app",
      );
    }
  }

  @override
  void listenInternetConnectivity() {
    Connectivity().onConnectivityChanged.listen((changeStatus) {
      connectivityStatus = changeStatus;

      functionsOfConnectivityStatus[connectivityStatus] != null ? functionsOfConnectivityStatus[connectivityStatus]!() : () {};
    });
  }

  void noneInternetConnection() {
    Get.offAllNamed(RouteConstants().initial);


    Get.defaultDialog(
      barrierDismissible: false,
      titlePadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
      title: "İnternet Bağlantını Bulamadık",
      middleText: "İnternet bağlantını tamamladıktan sonra uygulamayı kullanmaya devam edebilirsin",
    );
  }

  void whenInternetCome() {
    Get.back();

    Get.offAllNamed(RouteConstants().loginView);
  }
}