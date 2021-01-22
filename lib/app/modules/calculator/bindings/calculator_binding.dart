import 'package:get/get.dart';

import 'package:growallet/app/modules/calculator/controllers/calculator_controller.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalculatorController>(
      () => CalculatorController(),
    );
  }
}
