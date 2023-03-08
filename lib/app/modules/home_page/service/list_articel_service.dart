import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';

import '../model/list_articel_model.dart';

class NewsService {
  final _connect = Get.find<GetConnect>();

  Future<List> getNews() async {
    final response = await _connect.get('posts');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }

  Future getDetailNews({required String id}) async {
    print('p');
    final response = await _connect.get('posts/$id');
    if (!response.hasError) {
      return response.body!;
    } else {
      throw Get.snackbar('Error', response.statusCode.toString());
    }
  }
  // Future postNews({required String title, required String desc}) async {
  //   final response = await _connect.post(
  //     'posts',
  //     {
  //       'title': title,
  //       'body': desc,
  //       'userId': 1,
  //     },
  //   );
  //   Logger().d(postNews);
  //   if (!response.hasError) {
  //     return response.body!;
  //   } else {
  //     throw Get.snackbar('Error', response.statusCode.toString());
  //   }
  // }
}