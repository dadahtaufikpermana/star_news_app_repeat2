import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:star_news_app_repeat2/app/modules/home_page/controllers/home_page_controller.dart';

import '../../home_page/service/news_service.dart';

class CreateNewsController extends GetxController {
  FocusNode nodeTwo = FocusNode();

  void changeNode() {
    nodeTwo.requestFocus();
  }

  TextEditingController cTitle = TextEditingController();
  TextEditingController cDesc = TextEditingController();
  final isLoading = false.obs;

  HomePageController homepagecontroller = Get.find<HomePageController>();

  String userIdConstant = '11';

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> createNewsController() async {
    isLoading.toggle();
    try {
      final response = await NewsService().postNews(
          title: cTitle.text, desc: cDesc.text, userId: userIdConstant);
      print(response);
      homepagecontroller.refreshListNews();
      Get.back();
      isLoading.toggle();
      Get.snackbar("success", "create success");
    } catch (e) {
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }

  String? validateTitle(String value) {
    if (value.length < 5) {
      return "Title must be of 5 characters or more";
    }
    return null;
  }

  String? validateDesc(String value) {
    if (value.length < 8) {
      return "Description must be of 20 characters or more";
    }
    return null;
  }
}
