import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_list/controllers/pool_list_controller.dart';

class PoolListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoolListController>(
      () => PoolListController(),
    );
  }
}
