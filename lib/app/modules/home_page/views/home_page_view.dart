import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skeletons/skeletons.dart';

import '../../../routes/app_pages.dart';
import '../../shares/card_widget.dart';
import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  final HomePageController homeController = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text('StarsNews', style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.indigo,
      body: Obx(() => controller.isLoading.value
          ?CircularProgressIndicator()
          :RefreshIndicator(
            onRefresh: () => controller.refreshListArticle(),
            child: SingleChildScrollView(
        child: Column(
            children: [
              ...homeController.listNews.reversed.map(
                    (element) => CardWidget(
                  title: element.title,
                  description: element.body,
                  id: element.id.toString(),
                ),
              )
            ],
        ),
      ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.CREATE_NEWS),
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
