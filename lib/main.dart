import 'package:flutter/material.dart';
import 'package:todo/data/todo.dart';
import 'package:todo/presentation/Widget/todo_list_button.dart';
import 'package:todo/presentation/common/list_view_example.dart';

final List<Todo> todo = [


];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/todo": (context) => ListViewExample(todo: todo), // ✅ Paramètre nommé
      },
      debugShowCheckedModeBanner: false,
      title: 'ESN.81 évaluation Flutter',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TodoListButton(),
            ],
          ),
        ),
      ),
    );
  }
}
