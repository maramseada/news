import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_news/src/features/home/presentation/controller/search_state.dart';

import '../../data/data_source.dart';
import '../../data/models/news.dart';

class SearchCubit extends Cubit<SearchState> {
  final searchData api;
  List<News>? searchFirstData;

  SearchCubit(this.api) : super(SearchInitial());

  void searchNews(final String search) async {
    emit(SearchLoading());
    try {
      searchFirstData = await api.Search(categoryName: search);
      emit(SearchSuccess(news: searchFirstData!));
    } catch (e) {
      emit(SearchFailure(errMessage: 'Error: $e'));
    }
  }
}

class SearchSecondCubit extends Cubit<SearchSecondState> {
  final searchData api;
  List<News>? searchSecondData;

  SearchSecondCubit(this.api) : super(SearchSecondInitial());
  void searchSecondNews(final String search) async {
    emit(SearchSecondLoading());
    try {
      searchSecondData = await api.Search(categoryName: search);
      emit(SearchSecondSuccess(news: searchSecondData!));
    } catch (e) {
      emit(SearchSecondFailure(errMessage: 'Error: $e'));
    }
  }
}
