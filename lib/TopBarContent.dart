import 'package:design/floating_quick_access_bar.dart';
import 'package:design/widgets/Pelette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBarContent extends StatefulWidget {
  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Material(
      elevation: 5,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 56,
            backgroundColor: Pelette.ColorPrimaryDark,
            title: Text('Spaciko'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context,index) => FloatingQuickAccessBar(screenSize: screenSize),
              childCount: 1
            ),
          )
        ],
      )
    );
  }
}
