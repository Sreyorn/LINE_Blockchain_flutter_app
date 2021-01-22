import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("icons/logo.png"),
            RawMaterialButton(
              onPressed: () {
                // _.addToPlan();
                controller.signIn();
              },
              fillColor: Colors.indigoAccent,
              child: Container(
                width: Get.width / 2,
                child: Text(
                  "Log in with Line",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
