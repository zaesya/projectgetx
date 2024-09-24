import 'package:flutter/material.dart';
import 'package:projectgetx/widgetReuse/fooditem.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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

            // Add padding of 40 pixels (around 4 cm)
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 40.0),
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
                    // Image from assets inside the Stack
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

                  // Row 1: Bubur Ayam McD and HotCakes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Reusable FoodItem for Bubur Ayam McD
                      FoodItem(
                        image: 'assets/bubur.png',
                        name: 'Bubur Ayam McD',
                        price: '23.000',
                      ),
                      SizedBox(width: 16), // Space between the items

                      // Reusable FoodItem for HotCakes
                      FoodItem(
                        image: 'assets/hotcakes.png',
                        name: 'HotCakes',
                        price: '20.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16), // Space between rows

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Reusable FoodItem for Nasi Uduk
                      FoodItem(
                        image: 'assets/mcflurry.png', // Replace with your asset path
                        name: 'McFlurry Oreo',
                        price: '12.000',
                      ),
                      SizedBox(width: 16), // Space between the items

                      // Reusable FoodItem for Big Mac
                      FoodItem(
                        image: 'assets/gulai.png', // Replace with your asset path
                        name: 'McD Gulai',
                        price: '30.000',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Reusable FoodItem for Nasi Uduk
                      FoodItem(
                        image: 'assets/kentang.png', // Replace with your asset path
                        name: 'French Fries',
                        price: '16.000',
                      ),
                      SizedBox(width: 16), // Space between the items

                      // Reusable FoodItem for Big Mac
                      FoodItem(
                        image: 'assets/cheeseburger.png', // Replace with your asset path
                        name: 'Cheeseburger',
                        price: '32.000',
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
