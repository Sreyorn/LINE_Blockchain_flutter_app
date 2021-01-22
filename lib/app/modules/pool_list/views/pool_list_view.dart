import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_list/controllers/pool_list_controller.dart';
import 'package:growallet/app/modules/pool_list/views/card_list.dart';
import 'package:growallet/app/routes/app_pages.dart';

class PoolListView extends GetView<PoolListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Pick a pool to invest',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.POOL_LIST_DETAIL, arguments: 0);
            },
            child: CardListItem(
              title: "Low Risk",
              detail: "ETH staking\nUniswap liquidity provider",
              color: Color(0xFF00AA60),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.POOL_LIST_DETAIL, arguments: 1);
            },
            child: CardListItem(
              title: "Moderate Risk",
              detail:
                  "ETH staking\nUniswap liquidity provider\nCompound lending",
              color: Color(0xFFEBB556),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.POOL_LIST_DETAIL, arguments: 2);
            },
            child: CardListItem(
              title: "Hardcore",
              detail:
                  "ETH staking\nUniswap liquidity provider\nCompound lending\nHolding Bitcoin and Ethereum\nDefi abitrage",
              color: Color(0xFFD84F46),
            ),
          ),
        ],
      ),
    );
  }
}
