import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardListItem extends StatelessWidget {
  final String title;
  final String detail;
  final Color color;
  CardListItem({this.title = "Test", this.detail, this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 185,
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              detail,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
