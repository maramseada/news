import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_source.dart';
import '../controller/search_cubit.dart';
import '../screens/home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider(create: (context) =>       SearchCubit(searchData())),
        BlocProvider(create: (context) =>       SearchSecondCubit(searchData())),

      ],

      child: const HomeScreenContent(),
    );
  }
}
