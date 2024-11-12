import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/controller/responsive_controller.dart';
import 'package:projectgetx/pages/menus/responsive/deliver_mobile.dart';
import 'package:projectgetx/pages/menus/responsive/deliver_tablet.dart';

class Deliver extends StatelessWidget {
  Deliver({super.key});

  final CartController cartController = Get.put(CartController());
  final ResponsiveController responsiveController = Get.put(ResponsiveController());

  @override
  Widget build(BuildContext context) {
    responsiveController.updateScreenWidth(MediaQuery.of(context).size.width);
    
    cartController.loadItemsFromDB();

    return Obx(() {
      if (responsiveController.isMobile) {
        return DeliverMobile(cartController: cartController);
      } else {
        return DeliverTablet(cartController: cartController);
      }
    });
  }
}
