import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/Widgets/NewsTile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: NewsTile(article: articles[index]),
                ),
            childCount: articles.length));
  }
}
