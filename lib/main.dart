import 'package:flutter/material.dart';
import 'package:netflix_clone/component/app_theme.dart';
import 'package:netflix_clone/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      routerDelegate: AppRouter().router.routerDelegate,
      routeInformationParser: AppRouter().router.routeInformationParser,
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRouter().router.routeInformationProvider,
    );
  }
}
