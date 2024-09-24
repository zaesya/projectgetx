import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image Header
            Container(
              width: 600,
              height: 80, // adjust height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/header.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Add padding of 40 pixels (around 4 cm)
            Padding(
              padding: const EdgeInsets.only(top: 40.0), // Adds 40 pixels of space from the top
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
                            image: AssetImage('assets/menu_page.png'), // Replace with your asset image
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Row to contain Text side by side
            Row(
              mainAxisAlignment: MainAxisAlignment.start, // Aligns items to the start of the row
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0), // Adds margin to the right of the first text
                  child: SizedBox(
                    width: 67,
                    height: 27,
                    child: Text(
                      'menu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w700,
                        height: 0.04,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Container for the menu item (e.g., Bubur Ayam McD)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 183,
                height: 255,
                child: Stack(
                  children: [
                    // Background box
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 183,
                        height: 255,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE0E0E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),

                    // Add to Cart Button
                    Positioned(
                      left: 36,
                      top: 217,
                      child: Container(
                        width: 111,
                        height: 30,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1D011730),
                              blurRadius: 44,
                              offset: Offset(0, 42),
                              spreadRadius: -10,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 111,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFCAD37),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                '+    Add to cart',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // bubur image
                    Positioned(
                      left: 2,
                      top: 68,
                      child: Container(
                        width: 179,
                        height: 137,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/bubur.png'), 
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    // bubur teks
                    Positioned(
                      left: 14,
                      top: 9,
                      child: SizedBox(
                        width: 155,
                        height: 34,
                        child: Text(
                          'Bubur Ayam McD',
                          style: TextStyle(
                            color: Color(0xFF161C2D),
                            fontSize: 20,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                    ),

                    // Price Text
                    Positioned(
                      left: 14,
                      top: 33,
                      child: Opacity(
                        opacity: 0.70,
                        child: Text(
                          '23.000',
                          style: TextStyle(
                            color: Color(0xFF161C2D),
                            fontSize: 12,
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
            ),
          ],
        ),
      ),
    );
  }
}
