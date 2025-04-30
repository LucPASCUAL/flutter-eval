import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        print("Button Pressed");
        Navigator.pushNamed(context, "/todo");
      },
      label: Text("Accéder à la liste des tâches"),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        foregroundColor: const Color.fromARGB(255, 82, 238, 95),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      icon: Icon(Icons.touch_app),
    );
  }
}
