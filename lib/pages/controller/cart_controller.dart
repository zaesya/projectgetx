import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <String>[].obs;
  var selectedItems = <String>[].obs;

  void addItem(String item) {
    cartItems.add(item);
  }

  void removeSelectedItems() {
    cartItems.removeWhere((item) => selectedItems.contains(item));
    selectedItems.clear(); 
  }

  void toggleSelection(String item) {
    if (selectedItems.contains(item)) {
      selectedItems.remove(item); 
    } else {
      selectedItems.add(item); 
    }
    
  }
}
