import 'package:flutter/material.dart';
import 'package:learn_language/screens/splashScreen.dart';

void main(){

  runApp(LearnJapanees());
}

class LearnJapanees extends StatelessWidget {
  const LearnJapanees({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
