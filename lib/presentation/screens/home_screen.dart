import 'package:flutter/material.dart';
import 'package:todo/presentation/screens/todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Accueil')),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TodoScreen()),
            );
          },
          child: const Text('Aller à la Todo List'),
        ),
      ),
    );
  }
}