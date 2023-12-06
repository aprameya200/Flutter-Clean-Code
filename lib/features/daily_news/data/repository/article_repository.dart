import 'dart:html';

import 'package:news_clean_code/features/core/resources/data_state.dart';
import 'package:news_clean_code/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_clean_code/features/daily_news/data/models/article.dart';

import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

import '../../../core/constants/constants.dart';
import '../../domain/repository/article_repository.dart';
import 'package:dio/dio.dart';

class ArticleRepositoryImpl implements ArticleRepository { //implementation of domain layer repo
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);


  /**
   * Fetches news articles from
   * a remote API using [Dio], handles successful and failed
   * HTTP responses, and returns appropriate [DataState]
   * instances to represent the success or failure of the operation.
   */
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() async {
    try {
      //must not use entity definition in the data layer
      final httpResponse = await _newsApiService.getNewsArticle(
          domains: domains, apiKey: apiKey); //constants value

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.connectionError,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
