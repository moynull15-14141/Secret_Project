import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scrtproject/home.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 1200,
        backgroundColor: Color.fromARGB(255, 10, 58, 35),
        splash: Container(
          height: 500,
          width: 500,
          child: LottieBuilder.asset(
            'image/classhelper.json',
            fit: BoxFit.cover,
          ),
        ),
        nextScreen: home());
  }
}
