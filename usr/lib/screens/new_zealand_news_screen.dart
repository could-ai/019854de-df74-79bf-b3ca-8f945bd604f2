import 'package:flutter/material.dart';
import 'package:password_manager/models/news_article_model.dart';
import 'package:password_manager/widgets/news_list_item.dart';

class NewZealandNewsScreen extends StatelessWidget {
  const NewZealandNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewsArticle> newsArticles = [
      NewsArticle(
        title: '纽航任命新任CEO，为公司内部提拔，具备丰富的数字化转型经验',
        source: 'RNZ',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '新西兰外长温斯顿·彼得斯呼吁更多国家加入倡议，要求以色列结束加沙战争',
        source: 'RNZ',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '新西兰政府确认有意承认巴勒斯坦主权国家地位',
        source: '本地新闻综合',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '专家呼吁雇主重新审视年龄歧视问题，强调忠诚的老员工价值',
        source: '行业报告',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '新西兰多地出现强降雨，塔斯曼地区民防部门加强力量',
        source: '气象局',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '财政部长宣布提高家庭育儿补贴比例',
        source: '政府公告',
        publishedDate: '2025-07-30',
      ),
      NewsArticle(
        title: '奥克兰高端购物中心发生持刀伤人事件，24岁男子被控且不能保释',
        source: 'NZ Herald',
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
