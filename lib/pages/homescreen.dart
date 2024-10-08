import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/bottom_nav_controller.dart';
import 'package:projectgetx/pages/menus/deliver.dart';
import 'package:projectgetx/pages/menus/home.dart';
import 'package:projectgetx/pages/menus/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.find();
    final List<Widget> menus = [Home(), Deliver(), Profile()];

    BottomNavigationBarItem buildNavBarItem(String assetPath, String label, int index) {
      return BottomNavigationBarItem(
        icon: AnimatedContainer(
          duration: Duration(milliseconds: 300),  
          width: bottomNavController.selectedIndex.value == index ? 40 : 30,
          height: bottomNavController.selectedIndex.value == index ? 40 : 30,
          child: Image.asset(assetPath),
        ),
        label: label,
      );
    }

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeindexMenu,
          selectedItemColor: const Color.fromARGB(255, 243, 33, 33),
          unselectedItemColor: Colors.grey,
          items: [
            buildNavBarItem('assets/logo_mcd.png', "Home", 0),
            buildNavBarItem('assets/mcdeliver.png', "Delivery", 1),
            buildNavBarItem('assets/sim.png', "Profile", 2),
          ],
        ),
      );
    });
  }
}
