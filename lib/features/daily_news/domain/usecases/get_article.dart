import 'package:news_clean_code/features/core/resources/data_state.dart';
import 'package:news_clean_code/features/core/usecases/usecase.dart';
import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

class GetArticleUseCase implements UserCase<DataState<List<ArticleEntity>>,void>{

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    // TODO: implement call
    throw UnimplementedError();
  }

}