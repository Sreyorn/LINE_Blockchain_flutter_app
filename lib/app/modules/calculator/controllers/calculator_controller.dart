import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:growallet/app/common/pref_store.dart';
import 'package:growallet/app/data/provider/user_provider.dart';
import 'package:growallet/app/routes/app_pages.dart';

class CalculatorController extends GetxController {
  UserProvider provider = UserProvider();

  final count = 0.obs;
  var number = "";
  var txt = TextEditingController();
  @override
  void onInit() {}
  @override
  void onReady() {}
  @override
  void onClose() {}

  void onTextTap(String i) {
    number = number + i;
    txt.text = number;
  }

  void invest() async {
    var res = await provider.mintToken(PreferenceStore.getUser().id, number);
    if (res) {
      Get.dialog(
        AlertDialog(
          title: Text("Alert"),
          content: Container(
            child: Text(
              "Your recipt is ready",
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                // Get.offAndToNamed("/login");
                Get.until((route) => Get.currentRoute == Routes.HOME);
              },
              child: Text(
                "Okay",
                style: TextStyle(color: Colors.indigo),
              ),
            ),
          ],
        ),
        barrierDismissible: false,
      );
    }
  }

  void increment() => count.value++;
}
