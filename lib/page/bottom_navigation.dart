import 'package:flutter/material.dart';
import 'package:learning/HomePage.dart';
import 'package:learning/network_handler.dart';
import 'package:learning/page/first_screen.dart';
import 'package:learning/page/logIn_page.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selected_bottom_navigation_index = 0;

  List<Widget> pagelist = [
    NetworkHandler(),
    HomePage(),
    FirstScreen(),
    LogInPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: pagelist.elementAt(_selected_bottom_navigation_index),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
              backgroundColor: Colors.amberAccent),
        ],
        currentIndex: _selected_bottom_navigation_index,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selected_bottom_navigation_index = index;
          });
        },
      ),
    );
  }
}
