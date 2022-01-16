import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newappmss/controller/headlines_news/news-details-controller.dart';
import 'package:newappmss/theme/theme_service.dart';
import 'package:newappmss/view/about/about_me.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDetails extends GetView<NewsDetailsController> {
  NewsDetails({Key? key}) : super(key: key);

  @override
  NewsDetailsController controller = Get.put(NewsDetailsController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Newsify",style: Theme.of(context).textTheme.headline1,),
            Text("Bhupesh Sen",style: Theme.of(context).textTheme.headline6,)
          ],
        ),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios,color: context.theme.primaryColor,size: 30),
        ),
        elevation: 0,
        backgroundColor: context.theme.backgroundColor,
        actions: [

          IconButton(onPressed: (){
            Get.to(()=>AboutMe());

          }, icon: Icon(Icons.info,color: context.theme.primaryColor,))
        ],
      ),


      body:     Obx((){return controller.url.value.length>0? Stack(
        children: [
          Container(

      child:   WebView(

              initialUrl: controller.url.value,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {

                controller.isLoading.value = false;

              },
              onWebViewCreated: (WebViewController webViewController) {
                webViewController = webViewController;

              },
            )

          ),
          Obx((){return controller.isLoading.value?Center( child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: new AlwaysStoppedAnimation<Color>(context.theme.primaryColor),
          ),)
              : Container();})
        ],
      ):SizedBox();}),

    );
  }
}
