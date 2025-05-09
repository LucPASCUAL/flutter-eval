import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final String path;
  const CustomElevatedButton(
      {required this.label, required this.path, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, path);
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.deepPurple),
      label: Text(label),
    );
  }
}
