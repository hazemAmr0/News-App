import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/views/webView.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel article;

  NewsTile({
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: article.Image != null, // Only show if the article has an image
      child: GestureDetector(
        onTap: () {
          // Navigate to the desired page when the tile is tapped
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                // Replace 'YourNextPage' with the name of the page you want to navigate to
                return WebViewApp(initialUrl: article.url!);
              },
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                article.Image ?? 'https://tse4.mm.bing.net/th?id=OIP.XJliym5saHWke6DjJXihBAAAAA&pid=Api&P=0&h=180',
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  // Handle image loading error here
                  return Image.asset(
                    'assets/undraw_The_world_is_mine_re_j5cr.png', // Replace with your placeholder image asset
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              article.title ?? ' ',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              article.subtitle ?? '',
              maxLines: 2,
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
