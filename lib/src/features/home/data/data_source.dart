
import 'package:task_news/src/features/home/data/models/news.dart';

import '../../../core/helper/api.dart';
class searchData {
  Future<List<News>> Search({required String categoryName}) async {
    Map<String, dynamic>? data = await Api().get(
      url: 'https://newsapi.org/v2/everything?q=$categoryName&from=2024-07-01&sortBy=publishedAt&apiKey=72379cc8601b41a1ae78adfaa64a2bd2',
      formData: null,
    );

    List articles = data?['articles'] ?? [];

    List<News> newsList = [];
    for (int i = 0; i < articles.length; i++) {
      newsList.add(
        News.fromJson(articles[i]),
      );
    }
    print(newsList);
    return newsList;
  }
}
