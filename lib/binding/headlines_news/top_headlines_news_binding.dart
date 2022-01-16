import 'package:get/get.dart';
import 'package:newappmss/controller/headlines_news/top_headlines_news_controller.dart';


class TopHeadLinesNewsBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<TopHeadLinesNewsListController>(TopHeadLinesNewsListController(Get.find()));
  }
}