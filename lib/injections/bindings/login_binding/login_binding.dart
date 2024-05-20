import 'package:evreka_case/presentation/views/login_view/view_model/login_view_model.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginViewModel());
  }
}