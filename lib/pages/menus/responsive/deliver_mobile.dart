import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/widgetReuse/header_image.dart';

class DeliverMobile extends StatelessWidget {
  final CartController cartController;

  DeliverMobile({super.key, required this.cartController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderImage(),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return GestureDetector(
                    onTap: () {
                      cartController.toggleItemSelection(item);
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      elevation: 8,
                      shadowColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: item.isSelected
                            ? BorderSide(
                                color: const Color.fromARGB(255, 255, 176, 91),
                                width: 3)
                            : BorderSide(color: Colors.grey.shade200, width: 1),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: item.isSelected
                                ? [Color(0xFFFFF3E0), Color(0xFFFFE0B2)]
                                : [Colors.white, Colors.white],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  item.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: item.isSelected
                                        ? const Color.fromARGB(
                                            255, 255, 176, 91)
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: item.isSelected
                                      ? const Color.fromARGB(255, 255, 176, 91)
                                      : Colors.grey.shade200,
                                ),
                                child: Icon(
                                  Icons.check,
                                  size: 20,
                                  color: item.isSelected
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                            ],
                          ),
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
      floatingActionButton: _buildFloatingButtons(),
    );
  }

  Widget _buildFloatingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          backgroundColor: Color(0xFFFFDB7D),
          onPressed: () {
            cartController.cartItems
                .where((item) => item.isSelected)
                .forEach((item) {
              cartController.removeItemFromDB(item.id!);
            });
          },
          child: Icon(Icons.remove),
        ),
        // SizedBox(width: 10),
        // FloatingActionButton(
        //   backgroundColor: Color(0xFFFFDB7D),
        //   onPressed: () {},
        //   child: SizedBox(
        //     width: 35,
        //     height: 35,
        //     child: Image.asset(
        //       'assets/co.png',
        //       fit: BoxFit.contain,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
