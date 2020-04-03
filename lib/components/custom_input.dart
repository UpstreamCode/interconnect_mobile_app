import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/constants//styles.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final Function action;
  final bool obscure;

  CustomInputField(this.label, this.action, this.obscure);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      textAlign: TextAlign.left,
      onChanged: action,
      style: TextStyle(color: Colors.black87),
      decoration: kTextFieldDecoration.copyWith(
        hintText: label,
      ),
    );
  }
}
