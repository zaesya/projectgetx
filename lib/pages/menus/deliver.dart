import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';

class Deliver extends StatelessWidget {
  Deliver({super.key});

  final CartController cartController = Get.put(CartController()); 

  @override
  Widget build(BuildContext context) {
    cartController.loadItemsFromDB();

    return Scaffold(
      body: Column(
        children: [
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
              return ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return GestureDetector(
                    onTap: () {
                      cartController.toggleItemSelection(item); // Toggle selection in DB
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: item.isSelected
                            ? BorderSide(color: const Color.fromARGB(255, 255, 176, 91), width: 2)
                            : BorderSide.none,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(
                                fontSize: 18,
                                color: item.isSelected ? const Color.fromARGB(255, 255, 176, 91) : Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.check_circle,
                              color: item.isSelected ? const Color.fromARGB(255, 255, 176, 91) : Colors.grey,
                            ),
                          ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Remove selected items
          cartController.cartItems
              .where((item) => item.isSelected)
              .forEach((item) {
                cartController.removeItemFromDB(item.id!);
              });
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
