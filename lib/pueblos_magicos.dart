import 'package:flutter/material.dart';
import 'package:pueblosMagicosBMXFlutter/place_detail.dart';
import 'package:pueblosMagicosBMXFlutter/profile.dart';
import 'package:pueblosMagicosBMXFlutter/search.dart';

class PueblosMagicos extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PueblosMagicos();
  }
}

class _PueblosMagicos extends State<PueblosMagicos> {
  final List<Widget> widgetsChildren = [PlaceDetail(), Search(), Profile()];
  void onTabTapped(int index) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(items: [
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
