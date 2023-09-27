import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/CategoriesListView.dart';
import 'package:news_app/Widgets/Category_widget.dart';
import 'package:news_app/Widgets/NewsListView.dart';
import 'package:news_app/Widgets/NewsListViewBuilder.dart';
import 'package:news_app/Widgets/NewsTile.dart';
import 'package:news_app/views/home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0x9393A4),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Icon(Icons.newspaper),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            'News ',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            '360',
            style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ]),
      ),
      body:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            NewsListViewBuilder(Category:'general' ),
          ],
        ),
      ),
    );
  }
}

