import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            // push next page
            // Navigator.pushNamed(context, "/list");
          },
          child: Center(
            child: Text('tap here'),
          ),
        ),
      ),
    );
  }
}