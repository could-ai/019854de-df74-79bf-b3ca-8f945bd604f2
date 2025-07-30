import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class VietnamNewsScreen extends StatelessWidget {
  const VietnamNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: 'Vietnam\'s GDP to grow 6.5% in 2024: Standard Chartered',
        source: 'VnExpress',
        publishedDate: '2024-05-20',
      ),
      NewsArticle(
        title: 'Hanoi seeks to preserve \'bia hoi\' culture',
        source: 'Vietnam News',
        publishedDate: '2024-05-19',
      ),
      NewsArticle(
        title: 'Vietnamese coffee exports surge in early 2024',
        source: 'Reuters',
        publishedDate: '2024-05-21',
      ),
      NewsArticle(
        title: 'Da Nang to host international fireworks festival',
        source: 'Tuoi Tre News',
        publishedDate: '2024-05-18',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vietnam News'),
      ),
      body: ListView.builder(
        itemCount: newsArticles.length,
        itemBuilder: (context, index) {
          return NewsListItem(article: newsArticles[index]);
        },
      ),
    );
  }
}
