import 'package:get/get.dart';

class MyFunction extends GetxController {
  var qty = 0.obs;

  void increment() {
    qty++;
    if (qty > 10) {
      Get.snackbar("Message", "you cannot go more than 10",
          snackPosition: SnackPosition.BOTTOM);
      qty = 10.obs;
    }
  }

  void decrement() {
    qty--;
    if (qty < 0) {
      Get.snackbar("Error", "you cannot go less than 0",
          snackPosition: SnackPosition.BOTTOM);
      qty = 0.obs;
    }
  }
}
