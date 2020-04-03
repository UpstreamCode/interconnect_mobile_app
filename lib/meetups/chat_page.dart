import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/meetups/chat_message.dart';
import 'package:interconnect_mobile_app/meetups/chat_args.dart';

/// Chat Feature based off https://github.com/flutter/friendlychat-steps

class ChatPage extends StatefulWidget {
  @override
  State createState() => new ChatPageState();
  static const routeName = '/chat';
}
class ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      animationController: new AnimationController(
        duration: new Duration(milliseconds: 700),
        vsync: this,
      ),
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  void dispose() {
    for (ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }  

  Widget _buildTextComposer() {
   return new Container(
       margin: const EdgeInsets.symmetric(horizontal: 8.0),
       child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: new InputDecoration.collapsed(
                hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text)),
           ),
         ]
       )
    );
  }

  Widget build(BuildContext context) {

    return Column(
        children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          )
        ),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor),
          child: _buildTextComposer(),                         //modified
        ),
       ]
   );
  }
}