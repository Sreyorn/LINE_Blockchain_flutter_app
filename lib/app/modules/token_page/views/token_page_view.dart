import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/token_page/controllers/token_page_controller.dart';

class TokenPageView extends GetView<TokenPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TokenPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TokenPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
