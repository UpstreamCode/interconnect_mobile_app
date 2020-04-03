import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';
import 'package:interconnect_mobile_app/meetups/meetups_page.dart';
import 'package:interconnect_mobile_app/profile/profile_page.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/startscreens/login_page.dart';
import 'package:interconnect_mobile_app/startscreens/main_page.dart';
import 'package:interconnect_mobile_app/startscreens/registration_page.dart';
import 'package:interconnect_mobile_app/startscreens/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interconnect App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: ThemeColors.primary,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        ChatPage.routeName: (context) => ChatPage(),
        LoginPage.routeName: (context) => LoginPage(),
        MainPage.routeName: (context) => MainPage(),
        RegistrationPage.routeName: (context) => RegistrationPage(),
      },
    );
  }
}
class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Destination> _pageOptions = <Destination>[
    Destination(0, 'Home', Icons.home, ThemeColors.lightSecondary, HomePage()),
    Destination(1, 'Meetups', Icons.people, ThemeColors.lightSecondary, MeetupsPage()),
    Destination(2, 'Me', Icons.person, ThemeColors.lightSecondary, ProfilePage()),
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
        items: _pageOptions.map((Destination destination){
          return BottomNavigationBarItem(
              icon: Icon(destination.icon),
              title: Text(destination.title)
          );
          }
        ).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: ThemeColors.accent,
        onTap: _onItemTapped,
      ),
    );
  }
}
