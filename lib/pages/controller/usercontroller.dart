import 'package:get/get.dart';

class UserController extends GetxController {
  var username = ''.obs;

  void login(String inputUsername) {
    username.value = inputUsername;
  }

  void logout() {
    username.value = '';
  }
}

