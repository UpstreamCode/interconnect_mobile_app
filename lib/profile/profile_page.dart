import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
          children: <Widget> [
            Image.asset(
             'images/avatar.png',
             width:800,
             height: 120,
             //fit: BoxFit.cover,
            ),
            //TECHDEBT: Move ListTiles to separate widget
            ListTile(
              title: Text('John Dow'),
              trailing: Text('Button Here'),
              subtitle: Text('San Francisco, CA'),
              ),
            ListTile(
              leading: Icon( Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              leading: Icon( Icons.settings),
              title: Text('General'),
            ),
              ListTile(
              leading: Icon( Icons.person),
              title: Text('Account'),
            ),
              ListTile(
              leading: Icon( Icons.lock),
              title: Text('Privacy'),
            ),
              ListTile(
              leading: Icon( Icons.cancel),
              title: Text('Block'),
            ),
            //   ListTile(
            //   leading: Icon( Icons.help),
            //   title: Text('Help'),
            // ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: ThemeColors.primary,
              ),
              child: ListTile(
                title: Text('sign out'),
              ),
            ),
           ),
          ],
        )
     );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}