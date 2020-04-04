import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';

class MatchesGrid extends StatelessWidget {
  const MatchesGrid({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      children: List.generate(4, (index) {
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
                        image: new AssetImage('images/avatar.png',),
                    )
                  ),
                ),
              ),
            );
          }),
    );
  }
}