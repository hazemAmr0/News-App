import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/Category_Model.dart';
import 'package:news_app/Widgets/NewsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
   CategoryView({Key? key, required this.category}) : super(key: key);

final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:  Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            category,
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

        ]),
      ),
     backgroundColor:  Color(0x9393A4),
    body: Padding(
      padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
      child: CustomScrollView(
        slivers: [
          NewsListViewBuilder(Category: category),

        ],
      ),
    ),


    );
  }
}
