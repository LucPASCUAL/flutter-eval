import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/domain/models/Task.dart';

class TaskWidget extends StatelessWidget {

  final Task task;
  final int index;
  final void Function(int) onDelete;

  const TaskWidget({
    super.key,
    required this.task,
    required this.index,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              onDelete(index);
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(Icons.food_bank),
        title: Text(task.title),
        subtitle: Text(
          task.description,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );
  }
}
