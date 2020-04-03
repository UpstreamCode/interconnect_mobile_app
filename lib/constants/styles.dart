import 'package:flutter/material.dart';

const kTitleStyle = TextStyle(
  fontSize: 35.0,
  fontWeight: FontWeight.w900,
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  hintStyle: TextStyle(color: Colors.black38),
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
);
