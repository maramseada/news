import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_news/src/features/home/presentation/components/search_text_field.dart';
import '../../data/data_source.dart';
import '../components/search_list_view.dart';
import '../components/search_second_list_view.dart';
import '../controller/search_cubit.dart';


class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: SearchTextField(
                hintText: 'search list',
                onChanged: (value) {
                  BlocProvider.of<SearchCubit>(context).searchNews(value);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: SearchTextField(
                hintText: 'search list',
                onChanged: (value) {
                  setState(() {
                    BlocProvider.of<SearchSecondCubit>(context).searchSecondNews(value);
                  });
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),              alignment: Alignment.centerLeft,

              child: const Text('first search '),),
            const Flexible(
              flex: 3,
              child: SearchListView(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),                 alignment: Alignment.centerLeft,

              child: const Text('Second search '),),

            const Flexible(
              flex: 3,
              child: SearchSecondListView(),
            ),
          ],
        ),
      ),
    );
  }
}
