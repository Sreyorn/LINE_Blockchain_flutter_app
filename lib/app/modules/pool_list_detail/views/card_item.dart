import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardListItem extends StatelessWidget {
  final String name;
  final String detail;
  final String expect;
  final String icons;
  CardListItem({this.name, this.detail, this.expect, this.icons});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // height: 185,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icons,
              height: 44,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              detail,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              expect,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
