import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function action;

  CustomButton({this.label, this.color, this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
        child: MaterialButton(
          onPressed: action,
          minWidth: 200.0,
          textColor: Colors.white,
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
