import 'package:flutter/material.dart';

class TaskInput extends StatefulWidget {
  final Function(String, String) onAdd;

  const TaskInput({super.key, required this.onAdd});

  @override
  State<TaskInput> createState() => _TaskInputState();
}

class _TaskInputState extends State<TaskInput> {
  final _nameController = TextEditingController();
  final _descController = TextEditingController();

  void _submit() {
    final name = _nameController.text.trim();
    final desc = _descController.text.trim();

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Le nom de la tâche est requis")),
      );
      return;
    }

    widget.onAdd(name, desc);
    _nameController.clear();
    _descController.clear();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _nameController,
          maxLength: 20,
          decoration: const InputDecoration(labelText: 'Nom'),
        ),
        TextField(
          controller: _descController,
          maxLength: 30,
          decoration:
              const InputDecoration(labelText: 'Description (facultatif)'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Ajouter une tâche'),
        ),
      ],
    );
  }
}
