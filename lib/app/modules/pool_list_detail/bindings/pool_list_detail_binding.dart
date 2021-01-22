import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_list_detail/controllers/pool_list_detail_controller.dart';

class PoolListDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoolListDetailController>(
      () => PoolListDetailController(),
    );
  }
}
