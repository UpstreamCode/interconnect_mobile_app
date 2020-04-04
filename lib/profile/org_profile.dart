import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';

class OrgProfile extends StatefulWidget {
  @override
  _OrgProfileState createState() => _OrgProfileState();
  static const routeName = 'orgProfile';
}

class _OrgProfileState extends State<OrgProfile>
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
      begin: ThemeColors.primary,
      end: ThemeColors.primaryDark,
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
      body: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 75.0, 20.0, 20.0),
            child: Image.asset(
              'images/logo.png',
              height: animation.value * 50,
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.church),
            title: Text('Crosspoint Church'),
            subtitle: Text(
              'We are Crosspoint Church in San Fransisco. ' + 
              'We want to see our community and the world know Jesus ' +
              'and the peace He brings.'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 75.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(75.0, 0, 75.0, 0),
                  child: CustomButton(
                    label: 'Manage Members',
                    color: ThemeColors.accent,
                    action: () {
                      // Navigator.pushNamed(context, );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(75.0, 0, 75.0, 0),
                  child: CustomButton(
                    label: ' View Current Matches',
                    color: ThemeColors.accent,
                    action: () {
                      // Navigator.pushNamed(context, );
                    },
                  ),
                ),
                SizedBox(
                  height: 110.0,
                  width: 5.0,
                  child: CustomButton(
                    label: 'Send Invitations',
                    color: ThemeColors.accent,
                    action: () {
                      // Navigator.pushNamed(context, );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
