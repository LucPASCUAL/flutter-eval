import 'package:flutter/material.dart';

class StyleUtil {
  static const int OFF_WHITE = 0xF1F1F1F1;

  static TextStyle getMainTextStyle() {
    return TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getMediumTextStyle() {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getErrorTextStyle() {
    return TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.redAccent);
  }

  static TextStyle getButtonLabelStyle() {
    return TextStyle(fontSize: 16.0);
  }

  static TextStyle getListTileTitleStyle() {
    return TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(OFF_WHITE));
  }

  static TextStyle getListTileDescriptionStyle() {
    return TextStyle(fontSize: 16.0, color: Color(OFF_WHITE));
  }
}
