import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/bindings/bindings.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/homescreen.dart';
import 'package:projectgetx/pages/login_page.dart';

void main() {
  Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Login App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: MyBindings(), // Pastikan binding ini menghubungkan controller
        ),
      ],
    );
  }
}
