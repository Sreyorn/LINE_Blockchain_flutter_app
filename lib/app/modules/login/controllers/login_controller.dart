import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:get/get.dart';
import 'package:growallet/app/common/pref_store.dart';
import 'package:growallet/app/data/provider/user_provider.dart';
import 'package:growallet/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  UserProvider provider = UserProvider();
  final count = 0.obs;
  @override
  void onInit() async {
    Get.putAsync<SharedPreferences>(() async {
      final prefs = await SharedPreferences.getInstance();
      return prefs;
    });
    await Future.delayed(Duration(milliseconds: 1500));
    super.onInit();
  }

  @override
  void onClose() {}
  void signIn() async {
    if (PreferenceStore.getUser() == null || true) {
      try {
        final result = await LineSDK.instance.login();
        if (result.userProfile != null) {
          var res = await provider.getUser(result.userProfile.userId);
          Get.toNamed(Routes.HOME);
        }

        print(result);
        // user id -> result.userProfile.userId
        // user name -> result.userProfile.displayName
        // user avatar -> result.userProfile.pictureUrl
      } on PlatformException catch (e) {
        print(e);
      }
    } else {
      Get.toNamed(Routes.HOME);
    }
  }

  void increment() => count.value++;
}
