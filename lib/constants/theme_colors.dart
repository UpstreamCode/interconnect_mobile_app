import 'package:flutter/material.dart';

/// TODO: use design colors from mockups
/// overlay = 0x4071C9BF
/// darkAccent = 0xFF707070
/// lightAccent = 0xFFF3B651
/// darkPrimary = 0xFF18989B
/// medPrimary = 0xFF71C9BF
/// lightPrimary = 0xFFDBF1EF
/// gradient = 0xFF71C9BF - 0xFF18989B

class ThemeColors {
  static const primary = MaterialColor(0xFF71C9BF, _teal);
  static const primaryDark = MaterialColor(0xFF71C9BF, _tealDark);
  static const primaryLight = MaterialColor(0xFF71C9BF, _tealLight);
  static const accent = Colors.amber;

  static const Map<int, Color> _teal = {
    50:Color.fromRGBO(113,201,191, .1),
    100:Color.fromRGBO(113,201,191, .2),
    200:Color.fromRGBO(113,201,191, .3),
    300:Color.fromRGBO(113,201,191, .4),
    400:Color.fromRGBO(113,201,191, .5),
    500:Color.fromRGBO(113,201,191, .6),
    600:Color.fromRGBO(113,201,191, .7),
    700:Color.fromRGBO(113,201,191, .8),
    800:Color.fromRGBO(113,201,191, .9),
    900:Color.fromRGBO(113,201,191, 1),
  };

  static const Map<int, Color> _tealDark = {
    50:Color.fromRGBO(24,152,155, .1),
    100:Color.fromRGBO(24,152,155, .2),
    200:Color.fromRGBO(24,152,155, .3),
    300:Color.fromRGBO(24,152,155, .4),
    400:Color.fromRGBO(24,152,155, .5),
    500:Color.fromRGBO(24,152,155, .6),
    600:Color.fromRGBO(24,152,155, .7),
    700:Color.fromRGBO(24,152,155, .8),
    800:Color.fromRGBO(24,152,155, .9),
    900:Color.fromRGBO(24,152,155, 1),
  };

  static const Map<int, Color> _tealLight = {
    50:Color.fromRGBO(219,241,239, .1),
    100:Color.fromRGBO(219,241,239, .2),
    200:Color.fromRGBO(219,241,239, .3),
    300:Color.fromRGBO(219,241,239, .4),
    400:Color.fromRGBO(219,241,239, .5),
    500:Color.fromRGBO(219,241,239, .6),
    600:Color.fromRGBO(219,241,239, .7),
    700:Color.fromRGBO(219,241,239, .8),
    800:Color.fromRGBO(219,241,239, .9),
    900:Color.fromRGBO(219,241,239, 1),
  };
}
