// File: lib/pages/home.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/listmenu.dart';
import 'package:projectgetx/widgetReuse/header_image.dart';


class Home extends StatelessWidget {
  final CartController cartController;

  Home({Key? key})
      : cartController = Get.find<CartController>(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImage(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
              child: Container(
                width: 382,
                height: 29,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 370,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE0E0E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 0,
                      child: Opacity(
                        opacity: 0.70,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search . . .',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w600,
                              height: 0.24,
                              letterSpacing: -0.20,
                            ),
                            border: InputBorder.none, // Menghapus border
                            contentPadding: EdgeInsets.only(left: 40.0), // Padding untuk teks
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 6,
                      child: Container(
                        width: 18,
                        height: 18,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/search.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Konten lainnya tetap sama
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 40.0),
              child: Container(
                width: 382,
                height: 193,
                child: Stack(
                  children: [
                    // Background Yellow Box
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 382,
                        height: 158,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFDB7D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    // Image assets 
                    Positioned(
                      left: 34,
                      top: 0,
                      child: Container(
                        width: 311,
                        height: 193,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/menu_page.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 0.0, left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  FoodMenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
