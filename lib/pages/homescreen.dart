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

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeindexMenu,
          
          selectedItemColor: const Color.fromARGB(255, 243, 33, 33),  
          unselectedItemColor: Colors.grey, 
          items: [
           
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/logo_mcd.png',  
                width: 30, 
                height: 30, 
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/mcdeliver.png',  
                width: 30, 
                height: 30, 
              ),
              label: "Delivery",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/sim.png',  
                width: 30, 
                height: 30, 
              ), 
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
