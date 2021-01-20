import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Place/ui/screens/place_detail.dart';
import 'Place/ui/screens/search.dart';
import 'User/ui/screens/profile.dart';

class PueblosMagicosCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.indigo), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo), label: ''),
      ]),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => PlaceDetail(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => Search(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => Profile(),
            );
            break;
        }
      },
    ));
  }
}
