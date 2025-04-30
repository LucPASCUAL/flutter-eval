import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/model/task.dart';

class ListViewTodos extends StatelessWidget {
  final List<Task> items;
  final Function(int) onDelete;

  const ListViewTodos({super.key, required this.items, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Slidable(
          key: ValueKey(items[index]),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => onDelete(index),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: Container(
            height: 70,
            margin: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: const Icon(Icons.task),
              title: Text(items[index].title),
              subtitle: Text(
                items[index].description.isEmpty
                    ? '🍃 No description provided 🍃'
                    : items[index].description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}
