import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../model/list_news_model.dart';
import '../service/news_service.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newsService = NewsService();

  @override
  void onInit() {
    super.onInit();
    getListNews();
  }

  Future<void> refreshListArticle() async{
    listNews.clear();
    await getListNews();
  }

  Future<void> getListNews() async{
    isLoading.toggle();
    try{
      final response = await NewsService().getNews();
      listNews.clear();
      listNews.addAll(response as Iterable<ListNewsModel>);
      isLoading.toggle();
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }


  Future deleteNews({required String userId}) async{
    isLoading.toggle();
    try{
      final response = await NewsService().deleteNewsService(id: userId);
      Logger().d(response);
      await refreshListArticle();
      isLoading.toggle();
      Get.snackbar("Deleted", "You have deleted article!");
    } catch(e){
      isLoading.toggle();
      Get.snackbar("Error", e.toString());
    }
  }
}
