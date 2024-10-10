import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/controller/deliverymodel.dart';
import 'package:projectgetx/widgetReuse/fooditem.dart';

class FoodMenu extends StatelessWidget {
  final CartController cartController;

  FoodMenu({Key? key})
      : cartController = Get.find<CartController>(),
        super(key: key);

  final List<Map<String, String>> foods = [
    {'image': 'assets/bubur.png', 'name': 'Bubur Ayam McD', 'price': '23.000'},
    {'image': 'assets/hotcakes.png', 'name': 'HotCakes', 'price': '20.000'},
    {'image': 'assets/mcflurry.png', 'name': 'McFlurry Oreo', 'price': '12.000'},
    {'image': 'assets/gulai.png', 'name': 'McD Gulai', 'price': '30.000'},
    {'image': 'assets/kentang.png', 'name': 'French Fries', 'price': '16.000'},
    {'image': 'assets/cheeseburger.png', 'name': 'Cheeseburger', 'price': '32.000'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: (foods.length / 2).ceil(),
      itemBuilder: (context, index) {
        final int firstIndex = index * 2;
        final int secondIndex = firstIndex + 1;

        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FoodItem(
                image: foods[firstIndex]['image']!,
                name: foods[firstIndex]['name']!,
                price: foods[firstIndex]['price']!,
                onAddToCart: () {
                  cartController.addItem(
                    ItemModel(
                      name: foods[firstIndex]['name']!,
                    ),
                  );
                },
              ),
              SizedBox(width: 16),
              if (secondIndex < foods.length)
                FoodItem(
                  image: foods[secondIndex]['image']!,
                  name: foods[secondIndex]['name']!,
                  price: foods[secondIndex]['price']!,
                  onAddToCart: () {
                    cartController.addItem(
                      ItemModel(
                        name: foods[secondIndex]['name']!,
                      ),
                    );
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
