import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/message_screen.dart';
import 'package:flutter_application_1/screens/profile_screen.dart';

class LandingState extends StatefulWidget {
  const LandingState({super.key});

  @override
  State<LandingState> createState() => _LandingStateState();
}

class _LandingStateState extends State<LandingState> {
  int _index = 0;
  static const List<Widget> _screens = [
    ChatScreen(),
    MessageScreen(),
    ProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              label: "home",
              icon: Icon(
                Icons.home,
                size: 20,
                color: Colors.grey,
              )),
          BottomNavigationBarItem(
              label: "message",
              icon: Icon(
                Icons.message,
                size: 20,
                color: Colors.grey,
              )),
          BottomNavigationBarItem(
              label: "profile",
              icon: Icon(
                Icons.person,
                size: 20,
                color: Colors.grey,
              )),
        ],
      ),
      body: _screens[_index],
    );
  }
}
