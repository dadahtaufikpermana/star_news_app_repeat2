import 'package:get/get.dart';

import '../modules/create_news/bindings/create_news_binding.dart';
import '../modules/create_news/views/create_news_view.dart';
import '../modules/detail_news/bindings/detail_news_binding.dart';
import '../modules/detail_news/views/detail_news_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_NEWS,
      page: () => DetailNewsView(),
      binding: DetailNewsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEWS,
      page: () => CreateNewsView(),
      binding: CreateNewsBinding(),
    ),
  ];
}
