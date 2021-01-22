import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growallet/app/common/pref_store.dart';
import 'package:growallet/app/data/models/token.dart';
import 'package:growallet/app/data/provider/user_provider.dart';

class HomeController extends GetxController with SingleGetTickerProviderMixin {
  final selectedView = 0.obs;
  TabController controller;
  UserProvider provider = UserProvider();
  static HomeController get to => Get.find();
  final tokens = List<TokenModel>().obs;

  @override
  void onInit() {
    controller = new TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onReady() async {
    await fetchToken();
    super.onReady();
  }

  Future<void> fetchToken() async {
    var user = PreferenceStore.getUser();
    var res = await provider.getTokenList(user.id);
    if (res != null) {
      tokens.assignAll(res);
    }
  }

  @override
  void onClose() {}
}
