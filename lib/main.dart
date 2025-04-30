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
      debugShowCheckedModeBanner: false,
      title: 'ESN.81 évaluation Flutter',
      home: HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/task': (context) => const TaskScreen(),
      },
    );
  }
}
