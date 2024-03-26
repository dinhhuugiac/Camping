import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:camping_intern/Screens/home_screens/body_home_page.dart';
import 'package:camping_intern/Screens/home_screens/guide_home_page.dart';
import 'package:camping_intern/Screens/home_screens/header_home_page.dart';
import 'package:camping_intern/Screens/home_screens/recomment_home_page.dart';
import 'package:camping_intern/Screens/home_screens/slider_home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;

  List<Widget> listIcon = [
    SvgPicture.asset('assets/icons/home.svg'),
    SvgPicture.asset('assets/icons/chat.svg'),
    SvgPicture.asset('assets/icons/note.svg'),
    SvgPicture.asset('assets/icons/user.svg'),
  ];
  List<Widget> listTitle = [
    const Text('Home'),
    const Text('Chat'),
    const Text('History'),
    const Text('Account'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const SingleChildScrollView(
          child: Column(
            children: [
              HeaderHomePage(),
              SizedBox(
                height: 16,
              ),
              BodyHomePage(),
              SizedBox(
                height: 16,
              ),
              SliderHomePage(),
              SizedBox(
                height: 24,
              ),
              RecommentHomePage(),
              SizedBox(
                height: 24,
              ),
              GuiderHomePage(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: const Color(0xFF2E8080),
          onPressed: () {},
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/images/VectorWhite.png'),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          height: 65,
          itemCount: listIcon.length,
          tabBuilder: (index, isActive) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 24, height: 24, child: listIcon[index]),
                SizedBox(
                  child: listTitle[index],
                )
              ],
            );
          },
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
        ),
      ),
    );
  }
}
