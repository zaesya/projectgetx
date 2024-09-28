import 'package:flutter/material.dart';


class ReusableTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  ReusableTextField({
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215, // Fixed width
      height: 35, // Fixed height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword, // Mask text if it's a password field
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          border: InputBorder.none, // Remove the default border
        ),
        style: TextStyle(
          fontFamily: 'Outfit',
          fontSize: 12, // Match the font size to the original design
        ),
      ),
    );
  }
}