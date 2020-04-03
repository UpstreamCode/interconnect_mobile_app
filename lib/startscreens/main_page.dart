import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/destination.dart';
import 'package:interconnect_mobile_app/home/home_page.dart';
import 'package:interconnect_mobile_app/meetups/meetups_page.dart';
import 'package:interconnect_mobile_app/profile/profile_page.dart';

class MainPage extends StatefulWidget {
  static const routeName = "/main";
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Destination> _pageOptions = <Destination>[
    Destination(0, 'Home', Icons.home, Colors.brown, HomePage()),
    Destination(1, 'Meetups', Icons.people, Colors.cyan, MeetupsPage()),
    Destination(2, 'Me', Icons.person, Colors.orange, ProfilePage()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageOptions[_selectedIndex].title),
      ),
      body: Center(
        child: _pageOptions.elementAt(_selectedIndex).page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _pageOptions.map((Destination destination) {
          return BottomNavigationBarItem(
              icon: Icon(destination.icon), title: Text(destination.title));
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
