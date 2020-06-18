import 'package:flutter/material.dart';
import 'package:nelson_uis/bookstore/colors.dart';

import 'book_detail.dart';
import 'bookstoreUi.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          for (final tabItem in TabNavigationItem.items) 
            BottomNavigationBarItem(
              icon: tabItem.icon,
              title: tabItem.title,
            ),
        ],
      ),
    );
  }
}

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: BookStore(),
          icon: Icon(
            Icons.book,
            color: blue,
          ),
          title: Text('Books'),
        ),
        TabNavigationItem(
          page: BookDetail(),
          icon: Icon(
            Icons.favorite,
            color: blue,
          ),
          title: Text('Books'),
        ),
        TabNavigationItem(
          page: BookStore(),
          icon: Icon(
            Icons.directions,
            color: blue,
          ),
          title: Text('Books'),
        ),
        TabNavigationItem(
          page: BookDetail(),
          icon: Icon(
            Icons.person,
            color: blue,
          ),
          title: Text('Books'),
        ),
      ];
}
