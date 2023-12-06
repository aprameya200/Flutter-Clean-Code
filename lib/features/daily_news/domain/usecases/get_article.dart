import 'package:news_clean_code/features/core/resources/data_state.dart';
import 'package:news_clean_code/features/core/usecases/usecase.dart';
import 'package:news_clean_code/features/daily_news/data/repository/article_repository.dart';
import 'package:news_clean_code/features/daily_news/domain/entities/article.dart';

import '../repository/article_repository.dart';

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>,void>{

  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticle();
  }

}