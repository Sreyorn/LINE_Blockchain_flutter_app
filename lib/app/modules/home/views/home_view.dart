import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:growallet/app/common/pref_store.dart';

import 'package:growallet/app/modules/home/controllers/home_controller.dart';
import 'package:growallet/app/modules/home/views/alert.dart';
import 'package:growallet/app/modules/home/views/chart.dart';
import 'package:growallet/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: ScrollController(),
        children: [
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            child: Text(
              '\$${PreferenceStore.getUser()?.balance ?? 0.00}',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            child: Text(
              '\$1,230',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          new Container(
            child: new TabBar(
              labelColor: Color(0xFF007AFF),
              indicatorColor: Color(0xFF007AFF),
              indicatorWeight: 3,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3.0, color: Color(0xFF007AFF)),
                insets: EdgeInsets.symmetric(horizontal: Get.width / 3.5),
              ),
              unselectedLabelColor: Colors.grey,
              controller: controller.controller,
              tabs: [
                new Tab(
                  text: 'Portfolio',
                ),
                new Tab(
                  text: 'Tokens',
                ),
              ],
            ),
          ),
          Container(
            height: 1080.0,
            margin: EdgeInsets.all(15),
            child: new TabBarView(
              controller: controller.controller,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFE5E5E5),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        child: Row(
                          children: [
                            Text("Investment value"),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$1,230',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                                Text(
                                  '\$1,230',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFE5E5E5),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        child: Row(
                          children: [
                            Text("Available Balance"),
                            Spacer(),
                            Text(
                              '\$102,040',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Portfolio daily changes',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    LineChartSample2(),
                    SizedBox(height: 20),
                    Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFFE5E5E5),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: Row(
                                children: [
                                  Text("Goals"),
                                  Spacer(),
                                  Text("\$1400000"),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              width: 300,
                              height: 20,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      Color(0xff00AA60)),
                                  backgroundColor: Color(0xffD6D6D6),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: RawMaterialButton(
                        onPressed: () {
                          Get.toNamed(Routes.POOL_LIST);
                        },
                        fillColor: Colors.indigoAccent,
                        child: Container(
                          width: Get.width / 2,
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
                    ),
                  ],
                ),
                new Obx(
                  () => Container(
                    height: Get.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All service",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Growallet",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        for (var i in controller.tokens)
                          GestureDetector(
                            onTap: () {
                              Get.generalDialog(
                                pageBuilder: (ctx, anim1, anim2) {
                                  return HintDialog(
                                    meta: i.meta == null
                                        ? {
                                            "type": "Low Risk",
                                            "value": "1000",
                                          }
                                        : jsonDecode(i.meta),
                                  );
                                },
                                barrierDismissible: true,
                                barrierLabel: "",
                                transitionBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return SlideTransition(
                                    position: Tween(
                                      begin: Offset(0, 1),
                                      end: Offset(0, 0),
                                    ).animate(animation),
                                    child: child,
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: EdgeInsets.all(17),
                                      decoration: BoxDecoration(
                                        // color: Colors.primaries[Random()
                                        //     .nextInt(Colors.primaries.length)],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset("icons/coin.png"),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      margin:
                                          EdgeInsets.only(left: 5, right: 5),
                                      padding:
                                          EdgeInsets.only(left: 10, right: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "PoolAssetToken",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text("Low Risk"),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Icon(Icons
                                          .swap_horizontal_circle_outlined),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        Center(
                          child: RawMaterialButton(
                            onPressed: () {
                              controller.fetchToken();
                            },
                            fillColor: Colors.indigoAccent,
                            child: Container(
                              width: Get.width / 2,
                              child: Text(
                                "FetchToken",
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
