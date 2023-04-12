import 'package:flutter/material.dart';
import 'package:otogootestapp/Screens/homeScreen.dart';
import 'package:get/get.dart';
import 'package:otogootestapp/route/app_router.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

