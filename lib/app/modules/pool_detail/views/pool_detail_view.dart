import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:growallet/app/modules/pool_detail/controllers/pool_detail_controller.dart';

class PoolDetailView extends GetView<PoolDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PoolDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PoolDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
