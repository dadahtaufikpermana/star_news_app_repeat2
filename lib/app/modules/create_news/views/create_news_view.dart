import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../shares/form_widget.dart';
import '../controllers/create_news_controller.dart';

class CreateNewsView extends GetView<CreateNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        elevation: 0.0,
        title: Text(
          'StarNews',
          style: TextStyle(color: Colors.black),
        ),
      ),backgroundColor: Colors.green,
      body: FormWidget(),
    );
  }
}
