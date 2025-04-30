import 'package:flutter/material.dart';
import 'package:todo/presentation/screens/home_screen.dart';
import 'package:todo/presentation/screens/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"/todo": (context) => TodoList()},
      debugShowCheckedModeBanner: false,
      title: 'ESN.81 évaluation Flutter',
      home: HomeScreen(),
    );
  }
}
