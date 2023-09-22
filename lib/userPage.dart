import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nirmal/screens/chat.dart';
import 'package:nirmal/screens/homepage.dart';
import 'package:nirmal/screens/news.dart';
import 'package:nirmal/screens/profile.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    ChatPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {},
          backgroundColor: const Color(0xFF66CA98),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: GNav(
          gap: 8,
          activeColor: const Color(0xFF66CA98),
          color: Colors.grey,
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.newspaper_outlined,
              text: 'News',
            ),
            GButton(
              icon: Icons.textsms_outlined,
              text: 'Chat',
            ),
            GButton(
              icon: Icons.person_outlined,
              text: 'Profile',
            )
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
