import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../home_page/service/news_service.dart';

class CreateNewsController extends GetxController {
  final cTitle = TextEditingController();
  final cDesc = TextEditingController();
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  onSubmit() async {
    isLoading(true);
    try {
      final response =
      await NewsService().postNews(title: cTitle.text, desc: cDesc.text);
      print(response);
      isLoading(false);
      Get.back();
    } catch (e) {
      isLoading(false);
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
