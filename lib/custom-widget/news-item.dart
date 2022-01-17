import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:newappmss/model/top_head_lines_model.dart';

class TopHeadLineNewsItem extends StatelessWidget {
  final TopHeadLinesNewsModel newsModel;
  final ValueChanged<String>? onPressed;
  const TopHeadLineNewsItem({Key? key,required this.newsModel,this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return newsModel.urlToImage!=null?Container(

      width: MediaQuery.of(context).size.width,
padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //        border:  Border.all(color: Colors.orange),
          color:  context.theme.backgroundColor,
          shape: BoxShape.rectangle,


          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 0.5,
              blurRadius: 10,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ]
      ),
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: (){
          onPressed!("click");
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
              child: newsModel.urlToImage!=null?Image.network(
                newsModel.urlToImage!,
                height: 200.0,
             width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ):SizedBox(),
            ),
            Wrap(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 5),
                  child: Text(
                    newsModel.title ?? "",
                    textAlign: TextAlign.justify,
                    style:Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 0.0,right: 0.0),
                  child: Text(
                    newsModel.content ?? "",
                    maxLines: 2,
                    textAlign: TextAlign.justify,
                    style:Theme.of(context).textTheme.headline6,
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    ):SizedBox();
  }
}