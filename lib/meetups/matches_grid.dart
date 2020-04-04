import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';

class MatchesGrid extends StatelessWidget {
  final List<Person> matches;
  const MatchesGrid({Key key, @required this.matches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
      // Let the ListView know how many items it needs to build.
      itemCount: matches.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = matches[index];

        return Center(
          child: new Container(
            width: 100.0,
            height: 100.0,
            child: new Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                border: new Border.all(
                    color: ThemeColors.primaryLight,
                    width: 5.0,
                    style: BorderStyle.solid
                ),
                shape: BoxShape.circle,
                image: new DecorationImage(
                    image: new AssetImage('images/avatar.png'),
                )
              ),
            ),
          ),
        );
      },
    );
  }
}