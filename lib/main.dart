import 'package:e_bookapp/views/home/home_view.dart';
import 'package:e_bookapp/views/home/product_detail_view.dart';
import 'package:e_bookapp/views/login/login_view.dart';
import 'package:e_bookapp/views/login/welcome_view.dart';
import 'package:e_bookapp/views/main_tabiew/tabarview.dart';
import 'package:e_bookapp/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}

