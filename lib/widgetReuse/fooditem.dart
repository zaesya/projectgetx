import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final VoidCallback onAddToCart; // Callback for adding to cart

  const FoodItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.onAddToCart, // Initialize the callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Food Image
          Positioned(
            left: 2,
            top: 68,
            child: Container(
              width: 179,
              height: 137,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image), // image passed as a parameter
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Food Name
          Positioned(
            left: 14,
            top: 9,
            child: SizedBox(
              width: 155,
              height: 34,
              child: Text(
                name, // name passed as a parameter
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
                price, // price passed as a parameter
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
                    child: TextButton(
                      onPressed: onAddToCart, // Trigger the callback on button press
                      child: Text(
                        '+ Add to Cart',
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
