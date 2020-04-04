import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interconnect_mobile_app/api/api.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';
import 'package:interconnect_mobile_app/entities/user.dart';
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
  static List<Person> matches = List();

  String matchedText = "Meet your neighbours!";
  String placeholderText = 'We are finding your neighbours! We will email you when your group is completed.';

  @override
  void initState() {
    super.initState();
    getMatches();
  }

  getMatches() async {

    var uid = await User.getUid();
    var result = await Api.getMatchGroup(uid);

    setState(() {
      matches = result;
    });
  }

  bool hasMatches() {
    return matches!=null && matches.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double lrMargin = screenWidth*.10;

    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
            child: Image.asset(
              'images/logo.png',
              height: 50,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: FaIcon(
              FontAwesomeIcons.church,
              size: 60,
              color: ThemeColors.primaryDark,
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(lrMargin, 0, lrMargin, 20.0),
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
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: hasMatches() ? Text('CURRENT MATCHES:', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center) : Container(),
                ),
                SizedBox(
                  width: screenWidth - lrMargin*2,
                  child: hasMatches() ? MatchesGrid(people:matches) : Container()
                ),
                SizedBox(
                  child: CustomButton(
                    label: hasMatches() ? matchedText : placeholderText,
                    color: hasMatches() ? ThemeColors.accent : Colors.grey,
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
