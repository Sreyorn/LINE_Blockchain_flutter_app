import 'dart:convert';

import 'package:get/get.dart';
import 'package:growallet/app/data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceStore {
  static UserModel getUser() {
    if (Get.find<SharedPreferences>().containsKey('user')) {
      var user = UserModel.fromJson(
          json.decode(Get.find<SharedPreferences>().getString('user')));

      return user;
    } else {
      return null;
    }
  }
}
