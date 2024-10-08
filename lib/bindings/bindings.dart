import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/bottom_nav_controller.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/controller/usercontroller.dart'; // Import CartController

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => UserController());
    }
}
