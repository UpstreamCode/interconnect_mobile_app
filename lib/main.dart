import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';
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
        primarySwatch: Colors.brown,
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
