import 'package:design/widgets/Pelette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex;
  void OnItemSelected(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Email'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.comment),
            label: 'Comment'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User'
        ),
      ],
      onTap: OnItemSelected,
      currentIndex: _selectedIndex ?? 3,
      unselectedItemColor: Colors.black38,
      selectedItemColor: Pelette.ColorPrimaryDark,
    );
  }
}