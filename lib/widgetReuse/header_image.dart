import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  final double width;
  final double height;

  const HeaderImage({
    Key? key,
    this.width = 600,
    this.height = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/header.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
