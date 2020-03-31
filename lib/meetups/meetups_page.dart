import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/dimensions.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/destination.dart';
import 'package:interconnect_mobile_app/meetups/chat_args.dart';
import 'package:interconnect_mobile_app/meetups/chat_page.dart';

class MeetupsPage extends StatelessWidget {
  const MeetupsPage({ Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> groups = <String>[
      'Hannah',
      'Jessica & Dave',
      'Amir & Hope',
      'Taylor & Taylor'
    ];

    return Scaffold(
      body: SizedBox.expand(
        child: ListView.builder(
          itemCount: groups.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 128,
              child: Card(
                margin: EdgeInsets.fromLTRB(
                    Dimensions.marginStandard,
                  Dimensions.marginStandard,
                  Dimensions.marginStandard,
                  0
                ),
                child: InkWell(
                  onTap: () {
                    // push next page
                     Navigator.pushNamed(
                         context,
                         ChatPage.routeName,
                       arguments: ChatArgs(
                         groups[index],
                         'Here is a message!'
                       )
                     );
                  },
                  child: Center(
                    child: Text(groups[index]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}