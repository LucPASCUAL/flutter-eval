import 'package:flutter/material.dart';
import 'package:todo/presentation/common/task_item.dart';
import 'package:todo/presentation/domain/models/task.dart';

class ListViewExample extends StatelessWidget {
  final List<Task> tasks;
  final void Function(int) onDelete;

  const ListViewExample({
    super.key,
    required this.tasks,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskItem(
          task: tasks[index],
          onDelete: () => onDelete(index),
        );
      },
    );
  }
}
