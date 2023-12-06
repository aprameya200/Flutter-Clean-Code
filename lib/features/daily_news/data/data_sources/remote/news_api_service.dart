import 'package:news_clean_code/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../../../core/constants/constants.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService{

  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET("/everything")
  Future<HttpResponse<List<ArticleModel>>> getNewsArticle({ //gets the data from API
    @Query("domains") required String domains,
    @Query("apiKey") required String apiKey,
  });

}