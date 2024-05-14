import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:scrtproject/element/container.dart';
import 'package:scrtproject/mainPages/FavoritePage.dart';
import 'package:scrtproject/mainPages/LivePage.dart';
import 'package:scrtproject/mainPages/MenuPage.dart';

import 'package:scrtproject/search.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // Define your pages here
    home(),
    LivePage(),
    FavoritePage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: GNav(
            gap: 8,
            tabBorderRadius: 30,
            padding: EdgeInsets.all(16),
            tabBackgroundColor: Color.fromARGB(255, 241, 255, 186),
            backgroundColor: Color.fromARGB(255, 1, 60, 64),
            color: Color.fromARGB(255, 241, 255, 186),
            activeColor: Color.fromARGB(255, 1, 60, 64),
            // Color.fromARGB(255, 187, 203, 122),

            tabs: [
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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      usergratings(context),
                      useraName(context),
                    ],
                  ),
                  menu()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const search(),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Live Class",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontFamily: 'Font1',
                            fontSize: 42,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        child: Image.asset("image/live.png"),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 3.0, // Set here what you wish!
                    shadowColor: Color.fromARGB(255, 1, 60, 64),
                    child: Container(
                      height: 360,
                      width: 355,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 241, 255, 186),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  box1(
                                    onTap: () {},
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/physics.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Physics",
                                    heightIm: 80,
                                    widthIm: 80,
                                  ),
                                  box1(
                                    onTap: () {},
                                    heightIm: 85,
                                    widthIm: 85,
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/co3.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Computer",
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  box1(
                                    onTap: () {},
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/physics.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Physics",
                                    heightIm: 80,
                                    widthIm: 80,
                                  ),
                                  box1(
                                    onTap: () {},
                                    heightIm: 85,
                                    widthIm: 85,
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/co3.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Computer",
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  box1(
                                    onTap: () {},
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/physics.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Physics",
                                    heightIm: 80,
                                    widthIm: 80,
                                  ),
                                  box1(
                                    onTap: () {},
                                    heightIm: 85,
                                    widthIm: 85,
                                    height: 140,
                                    width: 140,
                                    imageUrl: "image/co3.png",
                                    imageUrl2: "image/pl.png",
                                    text: "Computer",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Activity",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontFamily: 'Font1',
                            fontSize: 42,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        child: Image.asset("image/active.png"),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text useraName(BuildContext context) {
    return Text("Moynul Hasan",
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontFamily: 'Font1',
              fontSize: 30,
            ));
  }

  Padding usergratings(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 0),
      child: Text("Hello",
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontFamily: 'Font1', fontSize: 18)),
    );
  }

  Padding menu() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
      ),
      child: Container(
        height: 50,
        width: 50,
        color: const Color.fromARGB(255, 187, 203, 122),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.grid_view,
            size: 35,
            color: Color.fromARGB(255, 1, 60, 64),
          ),
        ),
      ),
    );
  }
}
