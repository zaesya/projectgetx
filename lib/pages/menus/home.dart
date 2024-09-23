import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
