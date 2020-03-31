import 'package:flutter/material.dart';

class Destination {
  const Destination(this.index, this.title, this.icon, this.color, this.page);
  final int index;
  final String title;
  final IconData icon;
  final MaterialColor color;
  final Widget page;
}