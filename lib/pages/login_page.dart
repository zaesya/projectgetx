import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/widgetReuse/textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDB7D), // Set the background color for the whole screen
      body: SingleChildScrollView( // Allows scrolling to avoid overflow
        child: Container(
          width: MediaQuery.of(context).size.width, // Full width
          height: MediaQuery.of(context).size.height, // Full height
          padding: const EdgeInsets.symmetric(
            horizontal: 107, // Apply horizontal padding as in the original
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFEB2A34),
                  fontSize: 32,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 30),
              
              // Username input field
              ReusableTextField(
                hintText: 'Username',
                controller: usernameController,
              ),
              const SizedBox(height: 20),
              
              // Password input field
              ReusableTextField(
                hintText: 'Password',
                controller: passwordController,
                isPassword: true, // Mask text for password input
              ),
              
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;
                  // Perform login logic here
                  print('Username: $username, Password: $password');
                  Get.toNamed('home'); // Navigate to 'home'
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
