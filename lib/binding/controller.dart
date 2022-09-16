import 'package:demogext/controller/myfunction.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyFunction()); // TODO: implement dependencies
  }
}
