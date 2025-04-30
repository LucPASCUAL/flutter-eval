import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';
import '../common/list_view_todos.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final List<Task> _tasks = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';

  void _addTask() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _tasks.add(Task(title: _title, description: _description));
      });
      _formKey.currentState!.reset();
    }
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Titre...',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez renseigner un titre.';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _title = value!;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Description...',
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (value) {
                      _description = value!;
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _addTask,
                    child: const Text('Ajouter une todo'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListViewTodos(items: _tasks, onDelete: _deleteTask),
          ),
        ],
      ),
    );
  }
}
