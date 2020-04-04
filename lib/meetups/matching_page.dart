import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';
import 'package:interconnect_mobile_app/meetups/matches_grid.dart';

class MatchingPage extends StatefulWidget {
  const MatchingPage({ Key key}) : super(key: key);

  @override
  _MatchingPageState createState() => _MatchingPageState();
  static const routeName = 'matching';
}

class _MatchingPageState extends State<MatchingPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Animation colorAnimation;

// TODO: Integrate with api to get actual matches
  static List<Person> matches = [
    new Person(
      name: 'Sam G.',
      image: 'images/Sam.jpg',
      description: '...'
    ),
    new Person(
      name: 'Merri B.',
      image: 'images/merri.jpg',
      description: '...'
    ),
    new Person(
      name: 'Peregrin T.',
      image: 'images/pippin.jpg',
      description: '...'
    ),
    new Person(
      name: 'Frodo B.',
      image: 'images/frodo.jpg',
      description: '...'
    ),
  ];

  String buttonText = matches.isNotEmpty ? 
    'Meet Your Neighbors!' :
    'We are finding your neighbours! We will email you when your group is completed.'
    ;

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
            padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 20.0),
            child: Image.asset(
              'images/logo.png',
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
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
            padding: EdgeInsets.symmetric(horizontal: 95.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0),
                  child: Text('CURRENT MATCHES:', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 275.0,
                  width: 5.0,
                  child: MatchesGrid(matches:matches)
                ),
                SizedBox(
                  height: 125.0,
                  child: CustomButton(
                    label: buttonText,
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
