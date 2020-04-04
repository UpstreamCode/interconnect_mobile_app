import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/meetups/matches_grid.dart';

class MatchingPage extends StatefulWidget {
  @override
  _MatchingPageState createState() => _MatchingPageState();
  static const routeName = 'matching';
}

class _MatchingPageState extends State<MatchingPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation colorAnimation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 55.0, 20.0, 20.0),
            child: Image.asset(
              'images/logo.png',
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 20.0),
            child: FaIcon(
              FontAwesomeIcons.church,
              size: 100,
              color: ThemeColors.primaryDark,
            )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75.0, 0, 75.0, 0),
            child: ListTile(
              title: Text(
                'Crosspoint Church', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                'We are Crosspoint Church in San Fransisco. ' + 
                'We want to see our community and the world know Jesus ' +
                'and the peace He brings.', 
                style: TextStyle(color: Colors.white)
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 75.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                  child: Text('Current Matches:', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
                SizedBox(
                  height: 375.0,
                  width: 5.0,
                  child: MatchesGrid()
                ),
                SizedBox(
                  height: 125.0,
                  child: CustomButton(
                    label: 'We are finding your neighbours! We will email you when your group is completed.',
                    color: Colors.grey,
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
