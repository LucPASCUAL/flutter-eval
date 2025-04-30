import 'package:flutter/material.dart';

class TodoListButton extends StatelessWidget {
  const TodoListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamed(context, "/todo");
      },
      icon: const Icon(Icons.add),
      label: const Text("Ajouter une tâche"),
    );
  }
}
