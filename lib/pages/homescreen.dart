import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/bottom_nav_controller.dart';
import 'package:projectgetx/pages/menus/history.dart';
import 'package:projectgetx/pages/menus/home.dart';
import 'package:projectgetx/pages/menus/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = 
    Get.put(BottomNavController());
    
    final List<Widget> menus = [Home(), History(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeindexMenu,
          
          items:[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history_outlined),label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile"),
        ]),
      );
    });
  }
}
