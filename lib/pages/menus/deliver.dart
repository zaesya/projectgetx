import 'package:flutter/material.dart';

class Deliver extends StatelessWidget {
  const Deliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          // Image Header
          Container(
            width: 600 ,
            height: 80,  // adjust height as needed
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),     
        ],
      ),
      // Button to navigate to another screen using GetX
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'This is the second screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}