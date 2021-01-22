import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/calculator/controllers/calculator_controller.dart';

class CalculatorView extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Input investment amount\nin LOW RISK pool',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.center,
                    controller: controller.txt,
                  ),
                ),
              ),
              Row(
                children: [
                  for (var i = 1; i <= 3; i++)
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.onTextTap("$i");
                        },
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          child: Container(
                            alignment: Alignment.center,
                            height: Get.width / 3.5,
                            child: Text("$i"),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Row(
                children: [
                  for (var i = 4; i <= 6; i++)
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.onTextTap("$i");
                        },
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          child: Container(
                            alignment: Alignment.center,
                            height: Get.width / 3.5,
                            child: Text("$i"),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Row(
                children: [
                  for (var i = 7; i <= 9; i++)
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          controller.onTextTap("$i");
                        },
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          child: Container(
                            alignment: Alignment.center,
                            height: Get.width / 3.5,
                            child: Text("$i"),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child: Card(
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        child: Container(
                          alignment: Alignment.center,
                          height: Get.width / 3.5,
                          child: Text("."),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        controller.onTextTap("0");
                      },
                      child: Card(
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        child: Container(
                          alignment: Alignment.center,
                          height: Get.width / 3.5,
                          child: Text("0"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Card(
                        elevation: 0,
                        margin: EdgeInsets.zero,
                        child: Container(
                          alignment: Alignment.center,
                          height: Get.width / 3.5,
                          child: Text("<"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              RawMaterialButton(
                onPressed: () {
                  // Get.toNamed(Routes.CALCULATOR);
                  controller.invest();
                },
                fillColor: Colors.indigoAccent,
                child: Container(
                  width: Get.width - 50,
                  child: Text(
                    "Invest",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
