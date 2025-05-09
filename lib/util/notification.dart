import 'package:flutter/material.dart';
import 'package:todo/util/style/style_util.dart';

class NotificationUtil {
  static void showErrorMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .clearSnackBars(); // Pour éviter les superpositions
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: Color(StyleUtil.OFF_WHITE),
          ),
        ),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 4),
      ),
    );
  }
}
