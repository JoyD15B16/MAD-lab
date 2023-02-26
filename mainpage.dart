import 'package:flutter/material.dart';
import 'package:wynk/Pages/home.dart';
import 'package:wynk/Pages/profile.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        iconSize: 30,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor:  Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
