
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_news/src/features/home/presentation/components/search_list_view_item.dart';

import '../controller/search_cubit.dart';
import '../controller/search_state.dart';

class SearchSecondListView extends StatelessWidget {
  const SearchSecondListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchSecondCubit, SearchSecondState>(
      builder: (context, state) {
        if (state is SearchSecondLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SearchSecondSuccess) {
          final news = state.news;

          return ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) => SearchListViewItem(data: news[index]),
          );
        } else if (state is SearchSecondFailure) {
          return Text('Failure: ${state.errMessage}');
        } else {
          return const SizedBox();
        }
      },
    );
  }
}