import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/News_Service.dart';
import 'package:news_app/views/Splash_View.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  //getHttp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}