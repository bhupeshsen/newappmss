import 'package:get/get.dart';
import 'package:newappmss/binding/headlines_news/top_headlines_news_binding.dart';
import 'package:newappmss/view/headlines_news/top_headlines_news_list.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  TopHeadLinesNewsList(),
      binding: TopHeadLinesNewsBinding(),
    ),
  ];
}
