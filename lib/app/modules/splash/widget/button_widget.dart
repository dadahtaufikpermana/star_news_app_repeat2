import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextButton(
          onPressed: () => Get.toNamed(Routes.HOME_PAGE),
          child: Text("Start Aplication"),),

      ),
    );
  }
}