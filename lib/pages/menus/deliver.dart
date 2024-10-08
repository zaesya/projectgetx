import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart'; // Adjust import according to your structure

class Deliver extends StatelessWidget {
  const Deliver({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize cartController inside build method
    final CartController cartController = Get.find();

    return Scaffold(
      body: Column(
        children: [
          // Image Header
          Container(
            width: 600,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/header.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              // Using Obx to listen for changes in cartItems
              return ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  final isSelected = cartController.selectedItems.contains(item);

                  return GestureDetector(
                    onTap: () {
                      // Toggle selection of item
                      cartController.toggleSelection(item);
                    },
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blueAccent : Colors.white, // Change color when selected
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                          ),
                        ],
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 18,
                          color: isSelected ? Colors.white : Colors.black, // Change text color when selected
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
      // FloatingActionButton to remove selected items
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (cartController.selectedItems.isNotEmpty) {
            // Remove selected items from the cart
            cartController.removeSelectedItems();
          } else {
            // Show a snackbar if no items are selected
            Get.snackbar(
              "No items selected",
              "Please select items to remove.",
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        child: Icon(Icons.remove), // Change icon to remove
      ),
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
