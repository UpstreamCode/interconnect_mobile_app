import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/destination.dart';

class MeetupsPage extends StatelessWidget {
  const MeetupsPage({ Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<int> shades = <int>[50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

    return Scaffold(
      body: SizedBox.expand(
        child: ListView.builder(
          itemCount: shades.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 128,
              child: Card(
                child: InkWell(
                  onTap: () {
                    // push next page
                    // Navigator.pushNamed(context, "/text");
                  },
                  child: Center(
                    child: Text('Item $index'),
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