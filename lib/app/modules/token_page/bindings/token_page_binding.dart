import 'package:get/get.dart';

import 'package:growallet/app/modules/token_page/controllers/token_page_controller.dart';

class TokenPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TokenPageController>(
      () => TokenPageController(),
    );
  }
}
