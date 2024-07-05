
import 'package:flutter/cupertino.dart';

import '../../data/models/news.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  final List<News> news;
  SearchSuccess({required this.news});
}
class SearchFailure extends SearchState {
  final String errMessage;
  SearchFailure({required this.errMessage});
}
abstract class SearchSecondState {}

class SearchSecondInitial extends SearchSecondState {}

class SearchSecondLoading extends SearchSecondState {}
class SearchSecondSuccess extends SearchSecondState {
  final List<News> news;
  SearchSecondSuccess({required this.news});
}
class SearchSecondFailure extends SearchSecondState {
  final String errMessage;
  SearchSecondFailure({required this.errMessage});
}
