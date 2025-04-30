import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class ListViewTodos extends StatelessWidget {
  final List<Task> items;

  const ListViewTodos({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          height: 70,
          margin: const EdgeInsets.all(4.0),
          child: ListTile(
            leading: const Icon(Icons.food_bank),
            title: Text(items[index].title),
            subtitle: Text(
              items[index].description.isEmpty
                  ? '🍃 Pas de description 🍃'
                  : items[index].description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        );
      },
    );
  }
}
