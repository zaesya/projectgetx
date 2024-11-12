import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/usercontroller.dart';
import 'package:projectgetx/widgetReuse/textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFDB7D),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(
            horizontal: 107,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFEB2A34),
                  fontSize: 32,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 30),

              ReusableTextField(
                hintText: 'Username',
                controller: usernameController,
              ),
              const SizedBox(height: 20),

              ReusableTextField(
                hintText: 'Password',
                controller: passwordController,
                isPassword: true,
              ),

              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;

                  String correctUsername = 'zesya';
                  String correctPassword = '12345';

                  if (username.isEmpty || password.isEmpty) {
                    Get.snackbar(
                      'Fields Required', 
                      'Please enter both username and password.', 
                      snackPosition: SnackPosition.BOTTOM, 
                    );
                  } else if (username != correctUsername || password != correctPassword) {
                    Get.snackbar(
                      'Login Failed',
                      'Invalid username or password.', 
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  } else {
                    final UserController userController = Get.put(UserController());
                    userController.login(username); 

                    // Snackbar untuk login berhasil
                    Get.snackbar(
                      'Login Successful',
                      'Welcome, $username!',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.greenAccent,
                      colorText: Colors.white,
                    );

                    Get.toNamed('home'); 
                  }
                },
                child: Text(
                  'login',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 185, 94),
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
