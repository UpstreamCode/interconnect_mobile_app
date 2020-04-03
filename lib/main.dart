import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/entities/destination.dart';
import 'package:interconnect_mobile_app/entities/user.dart';
import 'package:interconnect_mobile_app/home/home_page.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';
import 'package:interconnect_mobile_app/meetups/meetups_page.dart';
import 'package:interconnect_mobile_app/profile/profile_page.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/startscreens/login_page.dart';
import 'package:interconnect_mobile_app/startscreens/main_page.dart';
import 'package:interconnect_mobile_app/startscreens/registration_page.dart';
import 'package:interconnect_mobile_app/startscreens/welcome_page.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  bool loggedIn = await User.isLoggedIn();

  if (loggedIn) {
    runApp(MyApp(MainPage.routeName));
  } else {
    runApp(MyApp(WelcomePage.routeName));
  }
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  MyApp(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interconnect App',
      theme: ThemeData(
        primarySwatch: ThemeColors.primary,
        primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
            color: Colors.white
        ),
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.white
            )
        ),
        accentColor: ThemeColors.accent,
      ),
      initialRoute: initialRoute,
      routes: {
        '/': (context) => MainPage(),
        WelcomePage.routeName: (context) => WelcomePage(),
        ChatPage.routeName: (context) => ChatPage(),
        LoginPage.routeName: (context) => LoginPage(),
        RegistrationPage.routeName: (context) => RegistrationPage(),
      },
    );
  }
}

