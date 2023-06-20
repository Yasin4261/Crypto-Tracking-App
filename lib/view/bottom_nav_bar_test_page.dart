import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './login_page.dart';
import './home_page.dart';

class BottomBarTest extends StatefulWidget {
  const BottomBarTest({Key? key});

  @override
  State<BottomBarTest> createState() => _BottomBarTestState();
}

class _BottomBarTestState extends State<BottomBarTest> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomePage(), // Örnek sayfalar
    LoginPage(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade900,
            gap: 8,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            padding: EdgeInsets.all(16),
            selectedIndex: _currentIndex,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Likes",
              ),
              GButton(
                icon: Icons.search,
                text: "Search",
              ),
              GButton(
                icon: Icons.settings,
                text: "Settings",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
