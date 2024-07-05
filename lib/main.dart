import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_news/src/core/utiles/simple_bloc_observer.dart';
import 'package:task_news/src/features/home/data/data_source.dart';
import 'package:task_news/src/features/home/presentation/components/home_cubit.dart';

void main() {
  // runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(
        enabled: true, builder: (context) =>  MyApp() // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  searchData searchApi = searchData();


   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
         debugShowCheckedModeBanner: false,
         locale: DevicePreview.locale(context),
         builder: DevicePreview.appBuilder,
         theme: ThemeData(
           scaffoldBackgroundColor: Colors.white,
           useMaterial3: true,
         ),
         home: const HomeScreen(),

     );
   }
}