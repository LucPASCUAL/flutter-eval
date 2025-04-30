import 'package:flutter/material.dart';

class TaskFormView extends StatefulWidget {
  final Function(String) onTaskAdded;

  const TaskFormView({Key? key, required this.onTaskAdded}) : super(key: key);

  @override
  _TaskFormViewState createState() => _TaskFormViewState();
}

class _TaskFormViewState extends State<TaskFormView> {
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    final task = _taskController.text.trim();
    if (task.isNotEmpty) {
      widget.onTaskAdded(task);
      _taskController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _taskController,
              decoration: const InputDecoration(
                labelText: 'Ajouter une tâche',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => _addTask(),
            ),
          ),
          const SizedBox(width: 8),
          ElevatedButton(
            onPressed: _addTask,
            child: const Text('Ajouter'),
          ),
        ],
      ),
    );
  }
}
