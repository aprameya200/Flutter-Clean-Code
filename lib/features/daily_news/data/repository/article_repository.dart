import 'package:news_clean_code/features/core/resources/data_state.dart';
import 'package:news_clean_code/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_clean_code/features/daily_news/data/models/article.dart';

import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

import '../../domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository{

  final NewsApiService _newsApiService;
  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() { //must not use entity definition in the data layer
    // TODO: implement getNewsArticle
    throw UnimplementedError();
  }

}