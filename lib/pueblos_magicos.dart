import 'package:flutter/material.dart';

import 'Place/ui/screens/place_detail.dart';
import 'Place/ui/screens/search.dart';
import 'User/ui/screens/profile.dart';

class PueblosMagicos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PueblosMagicos();
  }
}

class _PueblosMagicos extends State<PueblosMagicos> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [PlaceDetail(), Search(), Profile()];
  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '',
                )
              ])),
    );
  }
}
