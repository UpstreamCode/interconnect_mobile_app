import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/icebreaker.dart';

class IcebreakersPage extends StatelessWidget {
  static const routeName = '/icebreakers';
  final String title = 'Icebreakers';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          children: <Widget>[
            new Flexible(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    child: Text(
                      "Just For Fun",
                      style: TextStyle(color: ThemeColors.primary, fontWeight: FontWeight.bold, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: ThemeColors.primary,
                    child: getIcebreakersListView(fun)
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    child: Text(
                      "Getting to Know You",
                      style: TextStyle(color: ThemeColors.primary, fontWeight: FontWeight.bold, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: ThemeColors.primaryDark,
                    child: getIcebreakersListView(getToKnow)
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    child: Text(
                      "Deeper Dive",
                      style: TextStyle(color: ThemeColors.primary, fontWeight: FontWeight.bold, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: ThemeColors.primary,
                    child: getIcebreakersListView(deeper)
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 15, 15),
                    child: Text(
                      "Our Neighbourhood",
                      style: TextStyle(color: ThemeColors.primary, fontWeight: FontWeight.bold, fontSize: 26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: ThemeColors.primaryDark,
                    child: getIcebreakersListView(orgSpecific)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

getIcebreakersListView(mockList) {
  return new Scrollbar(
      child: Container(
          margin: EdgeInsets.all(20.0),
        height: 250.0,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
        // Let the ListView know how many items it needs to build.
        itemCount: mockList.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = mockList[index];
          return Padding(
            padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
            child: ListTile(
              title: Text(
                item,
                style: TextStyle(color: Colors.white)
              ),
            ),
          );
        },
      ),
    ),
  );
}