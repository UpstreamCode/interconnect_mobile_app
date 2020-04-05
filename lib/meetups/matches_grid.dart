import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/avatar.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';

class MatchesGrid extends StatelessWidget {
  final List<Person> people;
  const MatchesGrid({Key key, @required this.people}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
      // Let the ListView know how many items it needs to build.
      itemCount: 4,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final person = people!=null ? people[index] : null;
        return Avatar(
            width: 100,
            height: 100,
            image: person!=null ? person.image : null
        );
      },
    );
  }
}