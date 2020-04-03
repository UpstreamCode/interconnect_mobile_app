import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';

import 'login_page.dart';
import 'registration_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    colorAnimation = ColorTween(
      begin: Colors.blueAccent,
      end: ThemeColors.backgroundColor,
    ).animate(controller);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorAnimation.value,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.9],
            colors: [
              Colors.lightBlueAccent,
              Colors.lightBlue,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: animation.value * 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              CustomButton(
                label: 'Login',
                color: Colors.yellow,
                action: () {
                  Navigator.pushNamed(context, LoginPage.routeName);
                },
              ),
              CustomButton(
                label: 'Register',
                color: Colors.yellow,
                action: () {
                  Navigator.pushNamed(context, RegistrationPage.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
