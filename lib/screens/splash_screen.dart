import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'package:valorant/sreens/home_screen.dart';
class SplashScreen extends StatefulWidget {
  static const String routName = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    hideScreen();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body:
      Image.asset("assets/images/Splash Screen Dark.png")),
    );
  }

  Future<void> hideScreen()async {
    Future.delayed(Duration(seconds: 2),
        () {
      FlutterSplashScreen.hide();
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
        }
    );

  }
  @override
  void dispose (){
    super.dispose();

  }
}
