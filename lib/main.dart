import 'package:flutter/material.dart';
import 'package:todo/presentation/screens/home_screen.dart';
import 'package:todo/presentation/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ESN.81 Flutter Evaluation",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/tasks': (context) => const TaskScreen(),
      },
    );
  }
}