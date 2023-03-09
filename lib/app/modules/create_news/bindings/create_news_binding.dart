import 'package:get/get.dart';

import '../../home_page/controllers/home_page_controller.dart';
import '../controllers/create_news_controller.dart';

class CreateNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewsController>(
      () => CreateNewsController(),
    );
    Get.lazyPut<HomePageController>(
          () => HomePageController(),
    );
  }
}
