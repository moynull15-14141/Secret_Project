import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:scrtproject/mainPages/FavoritePage.dart';
import 'package:scrtproject/mainPages/LivePage.dart';
import 'package:scrtproject/mainPages/MenuPage.dart';
import 'package:scrtproject/mainPages/home2.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int navBardIndex = 0;
  static List<Widget> navbody = <Widget>[
    home2(),
    LivePage(),
    FavoritePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(60)),
            color: Color.fromARGB(255, 1, 60, 64),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(60),
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              child: GNav(
                gap: 8,
                tabBorderRadius: 60,
                padding: const EdgeInsets.all(12),
                tabBackgroundColor: const Color.fromARGB(255, 241, 255, 186),
                backgroundColor: const Color.fromARGB(255, 1, 60, 64),
                color: const Color.fromARGB(255, 241, 255, 186),
                activeColor: const Color.fromARGB(255, 1, 60, 64),
                // Color.fromARGB(255, 187, 203, 122),
                onTabChange: (index) {
                  setState(() {
                    navBardIndex = index;
                  });
                },
                tabs: const [
                  GButton(
                    icon: (FontAwesomeIcons.home),
                    text: 'Home',
                  ),
                  GButton(
                    icon: (FontAwesomeIcons.headset),
                    text: 'Live',
                  ),
                  GButton(
                    icon: (FontAwesomeIcons.heart),
                    text: 'Favorite',
                  ),
                  GButton(
                    icon: (FontAwesomeIcons.bars),
                    text: 'Menu',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: navbody[navBardIndex],
      ),
    );
  }
}
