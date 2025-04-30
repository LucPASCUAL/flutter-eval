import 'package:flutter/material.dart';
import 'package:todo/presentation/common/form_view.dart';
import 'package:todo/presentation/common/list_view_example.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<String> _tasks = [
    'Devoir',
    'Sport',
    'Faire à manger',
    'Vaisselle'
  ];

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste de fruits'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: const Color(0xFFFDF6FD),
      body: Column(
        children: [
          TaskFormView(onTaskAdded: _addTask),
          Expanded(
            child: _tasks.isEmpty
                ? const Center(
                    child: Text(
                      'Aucune tâche !',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                : ListViewExample(
                    tasks: _tasks,
                    onDelete: _removeTask,
                  ),
          ),
        ],
      ),
    );
  }
}
