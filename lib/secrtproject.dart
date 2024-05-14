import 'package:flutter/material.dart';
import 'package:scrtproject/splash_scrn/splash.dart';

class secrtproject extends StatelessWidget {
  const secrtproject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
              bodyLarge: TextStyle(color: Color.fromARGB(255, 1, 60, 64))),
          scaffoldBackgroundColor: Color.fromARGB(255, 223, 241, 149)),
      home: splash(),
    );
  }
}
