import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {

  ArticleModel(super.id, super.author, super.title, super.description, super.url, super.urlToImage, super.publishedAt, super.content);

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      json["id"] ?? "",
      json["author"]  ?? "",
      json["title"] ?? "",
      json["description"] ?? "",
      json["url"] ?? "",
      json["urlToImage"] ?? "",
      json["publishedAt"] ?? "",
      json["content"] ?? ""
    );
  }

}
