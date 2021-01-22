import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_detail/controllers/pool_detail_controller.dart';

class PoolDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoolDetailController>(
      () => PoolDetailController(),
    );
  }
}
