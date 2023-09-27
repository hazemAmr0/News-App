import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String Category;

  const NewsListViewBuilder({super.key, required this.Category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

var future;

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    super.initState();
    future = NewService(Dio()).getNews(category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('THERE IS AN ERROR BRO...'),
            );
          } else {
            return SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Colors.grey,
                ),
              ),
            );
          }
        });
  }
}
