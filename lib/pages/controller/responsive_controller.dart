import 'package:get/get.dart';

class ResponsiveController extends GetxController {
  var screenWidth = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void updateScreenWidth(double width) {
    screenWidth.value = width;
  }

  bool get isTablet => screenWidth.value >= 600;
  bool get isMobile => screenWidth.value < 600;
} 