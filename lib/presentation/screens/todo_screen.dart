import 'package:flutter/material.dart';
import 'package:todo/presentation/common/task_input.dart';
import 'package:todo/presentation/common/task_item.dart';
import 'package:todo/presentation/domain/models/task.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Task> tasks = [];

  void _addTask(String name, String description) {
    setState(() {
      tasks.add(Task(name: name, description: description));
    });
  }

  void _removeTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Column(
        children: [
          Expanded(
            child: tasks.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.info_outline, size: 48, color: Colors.grey),
                        SizedBox(height: 10),
                        Text(
                          "Aucune tâche pour le moment",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (ctx, index) => TaskItem(
                      task: tasks[index],
                      onDelete: () => _removeTask(index),
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TaskInput(onAdd: _addTask),
          ),
        ],
      ),
    );
  }
}
