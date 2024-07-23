import 'package:enpak_training_new/ui/VideoScreen.dart';
import 'package:enpak_training_new/utils/AppColors.dart';
import 'package:enpak_training_new/utils/Utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TabScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    TabScreen(title: 'Home'),
    VideoScreen(title: 'Search'),
    TabScreen(title: 'Notifications'),
    TabScreen(title: 'Messages'),
    TabScreen(title: 'Profile'),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        unselectedItemColor: Utils().hexToColor(Appcolors.gray_bottom_bar_color),
        selectedItemColor: Utils().hexToColor(Appcolors.brownbuttoncolor),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_home.png',
              width: 24,
              height: 24,
            ),
            label: 'Home',
            activeIcon: Image.asset(
              'assets/images/ic_home_selected.png',
              width: 24,
              height: 24,
            ),

          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_highlight.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/images/ic_highlight_selected.png',
              width: 24,
              height: 24,
            ),
            label: 'Highlights',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_enpak.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/images/ic_enpak_selected.png',
              width: 24,
              height: 24,
            ),
            label: 'Enpak',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_events.png',
              width: 24,
              height: 24,
            ),
            activeIcon: Image.asset(
              'assets/images/ic_events_selected.png',
              width: 24,
              height: 24,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/ic_user.png',
              width: 24,
              height: 24,
            ),
            activeIcon:Image.asset(
              'assets/images/ic_user_selected.png',
              width: 24,
              height: 24,
            ) ,
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}