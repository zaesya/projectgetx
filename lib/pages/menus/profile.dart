import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/usercontroller.dart';
import 'package:projectgetx/pages/login_page.dart';


class Profile extends StatelessWidget {
  final UserController userController = Get.put(UserController()); // Retrieve UserController instance

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Fixed Image Header
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
                top: 190,
                left: 87.21,
                right: 119,
                bottom: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end, // Memusatkan elemen secara horizontal
                children: [
                  // Profile Image Stack
                  Container(
                    width: 223.79,
                    height: 178,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 34.79,
                          top: 0,
                          child: Container(
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
                        ),
                        Positioned(
                          left: 173.79,
                          top: 7,
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
                  const SizedBox(height: 13),

                  // Name and Subtitle
                  Container(
                    width: 192,
                    height: 62,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 57,
                          top: 0,
                          child: Obx(() => Text(
                            userController.username.value, // Reactive username
                            style: TextStyle(
                              color: Color(0xFF161C2D),
                              fontSize: 30,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.50,
                            ),
                          )),
                        ),
                        Positioned(
                          left: 0,
                          top: 33,
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

                  // Logout Button (inside Container)
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      showLogoutDialog(context);
                    },
                    child: Text('Logout'),
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
