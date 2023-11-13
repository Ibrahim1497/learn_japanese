import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_language/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Center(
          child: Column(
            children: [
              Text("日本語を学ぶ",
                style: TextStyle(color:Colors.red,fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Learn Japanese",
                style: TextStyle(color:Colors.red,fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        nextScreen: HomePage());
  }
}
