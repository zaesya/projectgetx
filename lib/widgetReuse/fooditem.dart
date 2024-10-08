import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final VoidCallback onAddToCart;

  const FoodItem({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.onAddToCart,
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
                  image: AssetImage(image),
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
                name, 
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
                price,
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
            left: 13,
            top: 210,
            child: Center(
              child: SizedBox(
                width: 155, 
                height: 34,
                child: Container(
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
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFCAD37)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: onAddToCart,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        Text(
                          "+  Add to Cart",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                            color: Colors.white, 
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
