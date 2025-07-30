import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class NewZealandNewsScreen extends StatelessWidget {
  const NewZealandNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: '专家呼吁雇主重新审视年龄歧视问题，强调忠诚的老员工价值',
        source: '行业报告',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '新西兰医疗系统罢工24小时，超3.6万名医护人员参与',
        source: '卫生局',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '南北地区出现风雪天气，美食推荐温暖寒冬',
        source: '本地新闻',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '2025年奥克兰市地方选举候选人提名已正式开启',
        source: '选举委员会',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '新西兰楼市逐步降温，两年期房贷利率降至5.08%',
        source: '财经新闻',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '警方继续追查奥克兰刺杀案，遗体告别仪式已举行',
        source: '警方公告',
        publishedDate: '2025-07-30',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('今日新西兰新闻'),
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
