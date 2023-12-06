import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

import '../../../core/resources/data_state.dart';

abstract class ArticleRepository{ //abstract class whose implementation will be in the data layer

  Future<DataState<List<ArticleEntity>>> getNewsArticle();

}