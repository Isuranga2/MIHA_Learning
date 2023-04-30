import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TestController2());
  }
}
