import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/avatar.dart';
import 'package:interconnect_mobile_app/constants/dimensions.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:interconnect_mobile_app/entities/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _textController;
  bool loggedIn = true;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text',
    );
    getSignedInState();
  }

  getSignedInState() async {
    var result = await User.isLoggedIn();
    if (this.mounted) {
      setState(() {
        loggedIn = result;
      });
    }
  }

  signOut() async {
    await User.signOut();
    getSignedInState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: Dimensions.marginStandard),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Column(
          children: <Widget> [
            Avatar(width: 100, height: 100),
            //TECHDEBT: Move ListTiles to separate widget
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: ListTile(
              title: Text('Jaya Brown', style: TextStyle(color: ThemeColors.primaryDark, fontWeight: FontWeight.bold)),
              subtitle: Text('Toronto, ON', style: TextStyle(color: ThemeColors.primary)),
              )
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20,0,20,0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Hi!  My name is Jaya.  I have been a member of Crosspoint for 5 years.  "
                  "I live in Toronto with my husband and two daughters.",
                style: TextStyle(color: ThemeColors.primary)
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: RaisedButton(
                    onPressed: () => {},
                    color: ThemeColors.accent,
                    child: Text("update bio", style: TextStyle(color: Colors.white),)
                )
                )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: ListTile(
              leading: Icon( Icons.email, color: ThemeColors.primary,),
              title: Text('Email: jayabrown@yahoo.com', style: TextStyle(color: ThemeColors.primary),),
            )
            ),
            //   ListTile(
            //   leading: Icon( Icons.help),
            //   title: Text('Help'),
            // ),
          ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: RaisedButton(
              color: loggedIn ? ThemeColors.accent : Colors.grey,
              onPressed: () => signOut(),
              child: Text("sign out", style: TextStyle(color: Colors.white),),
            ),
          ),
        ]
        )
     )
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}