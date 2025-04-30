import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListViewExample extends StatelessWidget {
  final List<String> tasks;
  final Function(int) onDelete;

  const ListViewExample({
    Key? key,
    required this.tasks,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Slidable(
          key: ValueKey(tasks[index]),
          endActionPane: ActionPane(
            motion: const DrawerMotion(),
            extentRatio: 0.25,
            children: [
              SlidableAction(
                onPressed: (_) => onDelete(index),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Supprimer',
              ),
            ],
          ),
          child: ListTile(
            title: Text(tasks[index]),
          ),
        );
      },
    );
  }
}
