import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.bNavBarHeight,
    required int selectedNavbar,
  })  : _selectedNavbar = selectedNavbar,
        super(key: key);

  final double bNavBarHeight;
  final int _selectedNavbar;
  final double iconSize = 35;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bNavBarHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(166, 36, 180, 103)),
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home.png'),
                size: iconSize,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/news.png'),
                  size: iconSize),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/speaker.png'),
                  size: iconSize),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/user.png'),
                  size: iconSize),
              label: ''),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
