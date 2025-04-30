import 'package:flutter/material.dart';
import 'package:todo/presentation/common/custom_button.dart';
import 'package:todo/presentation/screens/home_screen.dart';
import 'package:todo/presentation/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomeScreen(),
        "/todo": (context) => TodoScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'ESN.81 évaluation Flutter',
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Application Todo",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: 'Entrez',
                  onPressed: () {
                    Navigator.pushNamed(context, "/todo");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
