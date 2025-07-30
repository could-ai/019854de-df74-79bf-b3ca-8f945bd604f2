import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class ThailandCambodiaNewsScreen extends StatelessWidget {
  const ThailandCambodiaNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: '泰柬达成停火协议，边境冲突暂告段落',
        source: '路透社',
        publishedDate: '2025-07-29',
      ),
      NewsArticle(
        title: '双方军事指挥官会晤，商讨维持停火措施',
        source: '美联社',
        publishedDate: '2025-07-29',
      ),
      NewsArticle(
        title: '停火协议于午夜生效，部分流离失所居民开始返家',
        source: 'BBC News',
        publishedDate: '2025-07-28',
      ),
      NewsArticle(
        title: '回顾：泰柬边境因领土争端爆发武装冲突',
        source: '纽约时报',
        publishedDate: '2025-07-24',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('泰柬冲突新闻'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Simulate a network request
          await Future.delayed(const Duration(seconds: 1));
        },
        child: ListView.builder(
          itemCount: newsArticles.length,
          itemBuilder: (context, index) {
            return NewsListItem(article: newsArticles[index]);
          },
        ),
      ),
    );
  }
}
