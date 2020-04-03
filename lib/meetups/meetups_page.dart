import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/dimensions.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';
import 'package:interconnect_mobile_app/meetups/chat_args.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';

class MeetupsPage extends StatelessWidget {
  const MeetupsPage({ Key key}) : super(key: key);

  Widget _circleImage(Person person) {
    return new Column(
        children: <Widget>[
          RaisedButton(
            key: Key('Button'),
            shape: CircleBorder(),
            color: ThemeColors.primaryLight,
            child: Container(
                height: 60,
                child: Icon(Icons.person, color: ThemeColors.primary,)
                ),
            onPressed: () => {},
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0,Dimensions.marginStandard,0,0),
            child: Text(person.name, style: TextStyle(color: ThemeColors.primaryDark),)
          ),
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    const List<Person> people = <Person>[
      Person(name: 'Hannah'),
      Person(name: 'Jessica'),
      Person(name: 'Amir'),
      Person(name: 'Taylor')
    ];

    return Scaffold(
        body: Column(
        children: <Widget> [
          Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                color: ThemeColors.primary[500],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30,30,30,0),
                    child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: people.map((person) => _circleImage(person)).toList(),
                  )
                )
              )
          )
        ]
      )
    );
  }
}