import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../model/list_articel_model.dart';
import '../service/list_articel_service.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  getListNews() async {
    isLoading(true);
    try {
      final response = await newsService.getNews();
      response.map((v) {
        print(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    } catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
