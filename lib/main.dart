import 'package:flutter/material.dart';
import 'package:otogootestapp/Screens/homeScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
    );
  }
}

