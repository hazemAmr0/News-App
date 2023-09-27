import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

 Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=20c28a8c28504dc1b36c30aaedd4a58c&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      // print(articleList);
      return articleList;
    }
    catch (e) {
      return [];
    }

  }
}
