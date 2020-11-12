import 'package:design/BottomBar.dart';
import 'package:design/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../TopBarContent.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:Responsive.isSmallScreen(context) ? AppBar(
        backgroundColor: Color(0xff18a499),
        title: Text('Spaciko'),
      )
      :PreferredSize(
        preferredSize: Size(screenSize.width,screenSize.height),
        child: TopBarContent(),
      ),
       bottomNavigationBar: Responsive.isSmallScreen(context) ? BottomBar() : null
    );
  }
}

