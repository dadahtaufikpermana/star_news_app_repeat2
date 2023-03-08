import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:logger/logger.dart';

class Initializer {
  static Future init() async {
    try {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
      _iniGetConnect();
    } catch (err) {
      rethrow;
    }
  }
  static Future<void> _iniGetConnect() async {
    final connect = GetConnect();
    connect.baseUrl = 'https://jsonplaceholder.typicode.com/';
    Logger().d(connect.baseUrl);
    Get.put(connect);
  }
}