import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color? foregroundColor;
  final String text;
  final String route;
  final Icon? icon;

  const CustomElevatedButton(
      {required this.text,
      required this.route,
      this.foregroundColor,
      this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: icon,
        label: Text(text),
        style: ElevatedButton.styleFrom(
          foregroundColor: (foregroundColor ?? Color.fromARGB(255, 0, 0, 0)),
        ));
  }
}
