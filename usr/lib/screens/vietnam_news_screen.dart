import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class VietnamNewsScreen extends StatelessWidget {
  const VietnamNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Updated sample data to reflect today's Vietnam news
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: '越南政府总理范明正率高级代表团出席2025年金砖国家扩大峰会',
        source: '越南官方媒体',
        publishedDate: '2024-08-09',
      ),
      NewsArticle(
        title: '越南国会主席陈青敏访问摩洛哥，开展双边交流',
        source: '越通社',
        publishedDate: '2024-08-09',
      ),
      NewsArticle(
        title: '越南司法部审查省份合并和乡级最低工资调整法令草案',
        source: '人民日报',
        publishedDate: '2024-08-09',
      ),
      NewsArticle(
        title: '联合国、世界银行及西方捐助者警告越南过去三年损失至少25亿美元援助',
        source: 'BBC 中文网',
        publishedDate: '2024-08-09',
      ),
      NewsArticle(
        title: '中越双方同意加快推进铁路连接项目',
        source: '新华社',
        publishedDate: '2024-08-09',
      ),
      NewsArticle(
        title: '越南与菲律宾将于8月9日在马尼拉湾举行首次联合海防演习',
        source: '越南国家电视台',
        publishedDate: '2024-08-09',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('今日越南新闻'),
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
