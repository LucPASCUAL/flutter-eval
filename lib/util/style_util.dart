import 'package:flutter/material.dart';

class StyleUtil {
  static const Color backgroundColorMess = Colors.redAccent;
  static const Color backgroundColorDelete = Colors.red;
  static const Color backgroundColorCopy = Colors.blue;
  static const Color backgroundColorCopied = Colors.green;

  static TextStyle getMainTextStyle() {
    return TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    );
  }
}
