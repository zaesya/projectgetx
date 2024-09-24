import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/bottom_nav_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }
}
