import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/domain/models/todo_class.dart';

class ListViewEval extends StatelessWidget {
  final List<TodoClass> items;
  final Function(int) onDelete;

  const ListViewEval({
    super.key,
    required this.items,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final task = items[index];
        return Slidable(
          key: ValueKey(task.name),
          startActionPane: ActionPane(
            motion: const DrawerMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => onDelete(index),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Supprimer',
              ),
            ],
          ),
          child: Container(
            height: 70,
            margin: EdgeInsets.all(4.0),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: Icon(Icons.work_outline),
              title: Text(
                task.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(task.description ?? ''),
            ),
          ),
        );
      },
    );
  }
}
