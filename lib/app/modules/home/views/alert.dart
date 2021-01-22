import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HintDialog extends StatefulWidget {
  final dynamic meta;
  HintDialog({this.meta});

  @override
  _HintDialogState createState() => _HintDialogState();
}

class _HintDialogState extends State<HintDialog> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0))),
      child: Container(
        padding: EdgeInsets.all(30),
        height: 500,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Pool Asset Token",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Pool type",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF818181),
                        ),
                      ),
                      Spacer(),
                      Text(
                        widget.meta["type"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pool type",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF818181),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ETH Staking",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Uniswap liquidity provider",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Initial value",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF818181),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$" + widget.meta["value"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Date of Creation:",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF818181),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "2020/12/19",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Expected ROI:",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF818181),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$30",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2FA84F),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
