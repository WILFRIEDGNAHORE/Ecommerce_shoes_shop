

import 'package:e_bookapp/views/login/welcome_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override

  void initState() {
    super.initState();
    fireOpenApp();
  }

  void fireOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    startApp();
  }

  void startApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()),);
  }


  
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        
        child: Image.asset("assets/images/Logo.jpeg", width: media.width* 0.7,fit: BoxFit.contain,),
      )
    );
  }
}