import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/meetups/matching_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            // push next page
            // Navigator.pushNamed(context, "/matching");
          },
          child: Center(
            child: CustomButton(
                label: 'Click to get a match!',
                color: ThemeColors.accent,
                action: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) =>
                      new MatchingPage())
                  );
                },
              ),
          ),
        ),
      ),
    );
  }
}