import 'package:flutter/material.dart';
import 'package:todo/presentation/domain/models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onDelete;

  const TaskItem({super.key, required this.task, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(task.name),
      background: Container(
          color: Colors.red, child: Icon(Icons.delete, color: Colors.white)),
      onDismissed: (direction) => onDelete(),
      child: ListTile(
        title: Text(task.name),
        subtitle: Text(task.description),
        leading: const Icon(Icons.task),
      ),
    );
  }
}
