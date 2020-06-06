import 'package:codedecoders/screens/explore.dart';
import 'package:codedecoders/screens/heart.dart';
import 'package:codedecoders/screens/needy.dart';
import 'package:codedecoders/screens/donor.dart';
import 'package:codedecoders/screens/bs.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Heart(),
    Explore(),
    Bussiness(),
    Needy(),
    Donor(),
  ];

  void onTabTapped(int index){
    setState(() {
     _currentIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.yellow,
        elevation: 0,
        iconSize: 32,

        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.heart_o),
            title: Text("Heart"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.signal),
            title: Text("Signal"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.bell_o),
            title: Text("Notification"),
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            title: Text("Profile"),
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}