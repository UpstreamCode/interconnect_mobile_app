import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/api/api.dart';
import 'package:interconnect_mobile_app/constants/dimensions.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/person.dart';
import 'package:interconnect_mobile_app/entities/user.dart';
import 'package:interconnect_mobile_app/meetups/chat_args.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';
import 'package:interconnect_mobile_app/meetups/person_avatar.dart';

class MeetupsPage extends StatefulWidget {
  const MeetupsPage({ Key key}) : super(key: key);

  @override
  MeetupsPageState createState() { return MeetupsPageState(); }

}

class MeetupsPageState extends State<MeetupsPage> {

  List<Person> people;

  initState() {
    super.initState();
    getMatches();
  }

  getMatches() async {

    var uid = await User.getUid();
    var result = await Api.getMatchGroup(uid);

    setState(() {
      people = result;
    });
  }

  Widget _infoCard(Person person) {
    return new Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Card(
            color: ThemeColors.primary,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Hi!  My name is Susie.  "
                  "I have been a member of Crosspoint for 5 years.  "
                  "I live in San Fran with my husband and two daughters.",
                style: TextStyle(color: Colors.white),)
            )
          )
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    if (people == null) {
      return CircularProgressIndicator();
    }

    Person selectedPerson = people[0];

    return Scaffold(
        body: Column(
        children: <Widget> [
          Container(
            height: 120,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: GridView.count(
                crossAxisCount: 1,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: people.map((person) => PersonAvatar(person: person)).toList(),
            )
          )
          ),
          _infoCard(selectedPerson),

           Row(
               children: <Widget> [
                 Padding(
                 padding: EdgeInsets.symmetric(horizontal: 24.0),
                   child: RaisedButton(
                     color: Colors.white,
                     onPressed: () => { },
                     child: Padding(
                         padding: EdgeInsets.all(12.0),
                         child: Text("See prompts", style: TextStyle(color: ThemeColors.primary),)
                     ),
                   )

           )
               ]),
           Expanded(
             child: ChatPage(),
           )
        ]
      )
    );
  }

}