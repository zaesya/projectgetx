import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/widgetReuse/headertablet.dart';

class DeliverTablet extends StatelessWidget {
  final CartController cartController;

  DeliverTablet({super.key, required this.cartController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderTablet(), 
          Expanded(
            child: Obx(() {
              return GridView.builder(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return GestureDetector(
                    onTap: () {
                      cartController.toggleItemSelection(item);
                    },
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.black26,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: item.isSelected
                            ? BorderSide(
                                color: const Color.fromARGB(255, 255, 176, 91),
                                width: 3)
                            : BorderSide(color: Colors.grey.shade200, width: 1),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                              horizontal: 25, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  item.name,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: item.isSelected
                                        ? const Color.fromARGB(
                                            255, 255, 176, 91)
                                        : Colors.black87,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: item.isSelected
                                      ? const Color.fromARGB(255, 255, 176, 91)
                                      : Colors.grey.shade200,
                                ),
                                child: Icon(
                                  Icons.check,
                                  size: 25,
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
      //   child: Image.asset(
      //     'assets/co.png',
      //     width: 35,
      //     height: 35,
      //   ),
      // ),
    ],
  );
}
}
