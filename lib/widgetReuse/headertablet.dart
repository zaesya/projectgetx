import 'package:flutter/material.dart';

class HeaderTablet extends StatelessWidget {
  final double width;
  final double height;

  const HeaderTablet({
    Key? key,
    this.width = 1000,
    this.height = 90,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/HEADERtablet.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
