import 'package:flutter/material.dart';
import 'package:tmdb_app/core/di/di.dart';
import 'package:tmdb_app/modules/home/presenter/pages/home_page.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  await initDependencies();
  initializeDateFormatting('pt_BR', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TMDB APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const HomePage(),
    );
  }
}
