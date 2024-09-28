import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/widgetReuse/fooditem.dart';

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
            // Image Header
            Container(
              width: 600,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/header.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Search Box
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
                            border: InputBorder.none, // Removes the border
                            contentPadding: EdgeInsets.only(left: 40.0), // Padding for text
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

            // Add padding of 40 pixels (around 4 cm)
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
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Bubur Ayam McD
                      FoodItem(
                        image: 'assets/bubur.png',
                        name: 'Bubur Ayam McD',
                        price: '23.000',
                        onAddToCart: () {
                          cartController.addItem('Bubur Ayam McD');
                        },
                      ),
                      SizedBox(width: 16),

                      // HotCakes
                      FoodItem(
                        image: 'assets/hotcakes.png',
                        name: 'HotCakes',
                        price: '20.000',
                        onAddToCart: () {
                          cartController.addItem('HotCakes');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // McFlurry
                      FoodItem(
                        image: 'assets/mcflurry.png',
                        name: 'McFlurry Oreo',
                        price: '12.000',
                        onAddToCart: () {
                          cartController.addItem('McFlurry Oreo');
                        },
                      ),
                      SizedBox(width: 16),

                      // Gulai
                      FoodItem(
                        image: 'assets/gulai.png',
                        name: 'McD Gulai',
                        price: '30.000',
                        onAddToCart: () {
                          cartController.addItem('McD Gulai');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // French Fries
                      FoodItem(
                        image: 'assets/kentang.png',
                        name: 'French Fries',
                        price: '16.000',
                        onAddToCart: () {
                          cartController.addItem('French Fries');
                        },
                      ),
                      SizedBox(width: 16),

                      // Cheeseburger
                      FoodItem(
                        image: 'assets/cheeseburger.png',
                        name: 'Cheeseburger',
                        price: '32.000',
                        onAddToCart: () {
                          cartController.addItem('Cheeseburger');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
