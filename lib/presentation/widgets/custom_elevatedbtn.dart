import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn(
    this.foregroundColor,
    this.iconColor,
    this.backgroundColor,
    this.label, {
    this.onPressed,
    required this.path,
    super.key,
  });

  final Color? foregroundColor;
  final Color? iconColor;
  final Color? backgroundColor;
  final String label;
  final VoidCallback? onPressed;
  final String path;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, path); 
      },
      icon: Icon(Icons.rocket_launch_outlined),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        iconColor: iconColor,
      ),
    );
  }
}
