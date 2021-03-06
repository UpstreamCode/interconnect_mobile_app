
import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/avatar.dart';
import 'package:interconnect_mobile_app/constants/dimensions.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';

class PersonAvatar extends StatefulWidget {
  final Person person;

  const PersonAvatar({Key key, this.person }) : super(key: key);

  @override
  PersonAvatarState createState() { return PersonAvatarState(); }

}

class PersonAvatarState extends State<PersonAvatar> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          RaisedButton(
            key: Key('Button'),
            shape: CircleBorder(),
            child: Avatar(image: widget.person.image,width: 60, height: 60),
            onPressed: () => {},
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, Dimensions.marginStandard, 0, 0),
              child: Text(
                widget.person.firstName, style: TextStyle(color: ThemeColors.primaryDark),)
          ),
        ]
    );
  }

}