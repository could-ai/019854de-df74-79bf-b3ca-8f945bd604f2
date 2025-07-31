import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class ChinaNewsScreen extends StatelessWidget {
  const ChinaNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: '浙江推行长护险省内异地结算，保障失能老人护理需求',
        source: '央视网',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '北京积极应对台风“竹节草”，抢修山区“生命通道”',
        source: '中国政府网',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '习近平在上海考察，强调加快建设科技创新高地',
        source: '新华网',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '中共中央政治局召开会议，决定召开二十届四中全会',
        source: '人民网',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '中央气象台发布台风黄色预警',
        source: '中国经济网',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '全国春播粮食进度过六成，春播春种有序展开',
        source: '央视网',
        publishedDate: '2025-07-30',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('今日中国新闻'),
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
