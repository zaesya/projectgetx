import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <String>[].obs; // Menggunakan Rx untuk membuat list observable

  void addItem(String item) {
    cartItems.add(item); // Menambahkan item ke keranjang
    Get.snackbar('Added to Cart', '$item has been added to your cart!'); // Notifikasi snackbar
  }

  void removeItem(String item) {
    cartItems.remove(item); // Menghapus item dari keranjang
  }
}
