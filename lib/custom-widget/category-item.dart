import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:newappmss/model/category.dart';


class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final ValueChanged<String>? onPressed;
  const CategoryItem({Key? key,required this.category,this.onPressed}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        //        border:  Border.all(color: Colors.orange),
          color:  context.theme.primaryColor,
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: NetworkImage(
             category.url!),
              fit: BoxFit.cover
          ),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15)
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
          onPressed!(category.category!);
        },
        child: Column(
          children: [

            Wrap(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0,bottom: 5),
                  child: Text(
                    category.category!.toUpperCase(),
                    textAlign: TextAlign.justify,
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold

                    ),
                  ),
                ),



              ],
            )
          ],
        ),
      ),
    );
  }
}