import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_list_detail/controllers/pool_list_detail_controller.dart';
import 'package:growallet/app/modules/pool_list_detail/views/card_item.dart';
import 'package:growallet/app/routes/app_pages.dart';

class PoolListDetailView extends GetView<PoolListDetailController> {
  final risk = ['Low Risk', "Moderate Risk", "Hardcore"];
  final lowRisk = [
    [
      {
        "icon": "icons/eth.png",
        "name": "ETH Staking",
        "detail": "Estimated APR in ETH",
        "expected": "4% to 16%"
      },
      {
        "icon": "icons/uni.png",
        "name": "Uniswap Liquidity Provider",
        "detail": "Liquidity provider fee each trade",
        "expected": "0.3%"
      },
    ],
    [],
    []
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  risk[controller.index.value],
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              for (var i in lowRisk[controller.index.value])
                CardListItem(
                  name: i["name"],
                  icons: i["icon"],
                  detail: i["detail"],
                  expect: i["expected"],
                )
            ],
          ),
          Positioned(
            bottom: 70,
            left: 10,
            right: 10,
            child: Center(
              child: RawMaterialButton(
                onPressed: () {
                  Get.toNamed(Routes.CALCULATOR);
                },
                fillColor: Colors.indigoAccent,
                child: Container(
                  width: Get.width - 50,
                  child: Text(
                    "INVEST IN ${risk[controller.index.value].toUpperCase()}",
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
            ),
          )
        ],
      ),
    );
  }
}
