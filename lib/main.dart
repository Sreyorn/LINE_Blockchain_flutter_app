import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LineSDK.instance.setup("1655422175").then((_) {
    print("LineSDK Prepared");
  });
  await Get.putAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  }, permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
