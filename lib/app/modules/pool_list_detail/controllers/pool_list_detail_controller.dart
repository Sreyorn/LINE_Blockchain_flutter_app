import 'package:get/get.dart';

class PoolListDetailController extends GetxController {
  final index = 0.obs;
  @override
  void onInit() {
    super.onInit();
    index.value = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
