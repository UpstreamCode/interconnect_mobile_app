import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/meetups/chat_args.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {

    // Extract the arguments from the current ModalRoute settings and cast
    // them as ScreenArguments.
    final ChatArgs args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(args.message),
          )
        ]
      ),
    );
  }
}