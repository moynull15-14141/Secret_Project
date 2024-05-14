import 'package:flutter/material.dart';
import 'package:scrtproject/home.dart';

class fastscrn extends StatelessWidget {
  const fastscrn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(1, 60, 64, 3),
      appBar: AppBar(backgroundColor: Color.fromRGBO(1, 60, 64, 9)),
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => home()));
        },
        child: Container(
          height: 600,
          width: 600,
          child: Image.asset('image/logo.png'),
        ),
      )),
    ));
  }
}
