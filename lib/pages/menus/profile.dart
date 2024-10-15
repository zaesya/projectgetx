import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/usercontroller.dart';
import 'package:projectgetx/pages/login_page.dart';

class Profile extends StatelessWidget {
  final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.png'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: screenWidth,
              padding: const EdgeInsets.only(
                top: 100, 
                left: 20,
                right: 20,
                bottom: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 223.79,
                    height: 178,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 185,
                          height: 178,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/pfp.png'), 
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          top: 0,
                          child: Container(
                            width: 50,
                            height: 36,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/logo_mcd.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: 192,
                    height: 94,
                    child: Stack(
                      alignment: Alignment.center, 
                      children: [
                        Obx(() => Text(
                          userController.username.value, 
                          style: TextStyle(
                            color: Color(0xFF161C2D),
                            fontSize: 30,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        )),
                        const SizedBox(height: 30),
                        Positioned(
                          bottom: 0, 
                          child: Opacity(
                            opacity: 0.70,
                            child: Text(
                              'McDonald’s Customer',
                              style: TextStyle(
                                color: Color(0xFFFFDB7D),
                                fontSize: 20,
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  Center( 
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFDB7D) ,),
                      onPressed: () {
                        showLogoutDialog(context);
                      },
                      child: Text('Logout',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    Get.defaultDialog(
      title: 'Are you sure?',
      middleText: 'Do you really want to logout?',
      confirm: ElevatedButton(
        onPressed: () {
          Get.delete<UserController>(); 
          Get.offAll(LoginPage()); 
        },
        child: Text('Yes'),
      ),
      cancel: ElevatedButton(
        onPressed: () {
          Get.back(); 
        },
        child: Text('No'),
      ),
    );
  }
}