import 'package:evreka_case/presentation/views/home_view/view_model/home_view_model.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}