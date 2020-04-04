import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';

class Avatar extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  static const placeholder = 'images/avatar.png';

  Avatar({Key key, this.image, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        width: width,
        height: height,
        child: new Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border.all(
                  color: ThemeColors.primaryLight,
                  width: 5.0,
                  style: BorderStyle.solid
              ),
              shape: BoxShape.circle,
              image:
              new DecorationImage(
                image: new AssetImage(image !=null && image.isNotEmpty ? image : placeholder),
              )
          ),
        ),
      ),
    );
  }

}