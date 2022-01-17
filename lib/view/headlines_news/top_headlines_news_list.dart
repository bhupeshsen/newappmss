
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newappmss/constant/string_constants.dart';
import 'package:newappmss/controller/headlines_news/top_headlines_news_controller.dart';
import 'package:newappmss/custom-widget/news-item.dart';
import 'package:newappmss/custom-widget/category-item.dart';
import 'package:newappmss/theme/color_codes.dart';
import 'package:newappmss/theme/theme_service.dart';
import 'package:newappmss/view/about/about_me.dart';

import 'news-details.dart';

class TopHeadLinesNewsList extends GetView<TopHeadLinesNewsListController> {

  TopHeadLinesNewsList({Key? key}) : super(key: key);

  @override
  TopHeadLinesNewsListController controller = Get.put(TopHeadLinesNewsListController(Get.find()));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(StringConstants.APP_NAME,style: Theme.of(context).textTheme.headline1,),
            Text(StringConstants.DEVELOPER_NAME,style: Theme.of(context).textTheme.headline6,)
          ],
        ),
        leading: Icon(Icons.list_alt_rounded,color: context.theme.primaryColor,size: 45,),
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        actions: [
          IconButton(onPressed: (){
            ThemeService().switchTheme();

          }, icon: Icon(Icons.wb_sunny,color: context.theme.primaryColor,)),
          IconButton(onPressed: (){
            Get.to(()=>AboutMe());

          }, icon: Icon(Icons.info,color: context.theme.primaryColor,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              child: Obx((){return controller.categoryList.length>0?ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryList.length,

                  itemBuilder: (context,index){
                    return CategoryItem(category: controller.categoryList[index],
                      onPressed: (value){
                        controller.changeCategoryNews(value);
                    },);
                  }):SizedBox();}),
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: controller.topHeadLinesNewsList.length,
                  itemBuilder: (context, index) {
                    return TopHeadLineNewsItem(
                      newsModel: controller.topHeadLinesNewsList[index],
                      onPressed: (value){
                        Get.to(()=>NewsDetails(),arguments: [controller.topHeadLinesNewsList[index].url]);
                      },);
                  },
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
