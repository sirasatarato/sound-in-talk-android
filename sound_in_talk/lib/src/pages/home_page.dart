import 'package:flutter/material.dart';
import 'package:sound_in_talk/src/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'RoomList',
            icon: Icon(Icons.list),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_pin),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ProfilePage(),
    );
  }
}
