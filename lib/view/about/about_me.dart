
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:newappmss/theme/theme_service.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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


          }, icon: Icon(Icons.info,color: context.theme.primaryColor,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Row(

              children: [
                Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(

                      shape: BoxShape.rectangle,
                      border: Border.all(
                          width: 1,
                          color: context.theme.primaryColor),
                      color: context.theme.backgroundColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),


                    ),
                    child:  Text("BS",
                      style: Theme.of(context).textTheme.headline1,
                    )),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "7974430255",
                      textAlign: TextAlign.justify,
                      style:Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      "Bhupesh Sen",
                      textAlign: TextAlign.justify,
                      style:Theme.of(context).textTheme.headline1,
                    )
                  ],
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
