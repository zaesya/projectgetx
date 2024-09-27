import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <String>[].obs;
  var selectedItems = <String>[].obs;

  void addItem(String item) {
    cartItems.add(item);
  }

  void removeSelectedItems() {
    cartItems.removeWhere((item) => selectedItems.contains(item));
    selectedItems.clear(); // Clear selections after removal
  }

  void toggleSelection(String item) {
    if (selectedItems.contains(item)) {
      selectedItems.remove(item); // Deselect
    } else {
      selectedItems.add(item); // Select
    }
    // No need for update() here because RxList is reactive.
  }
}
