import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<Map<String, String>> _tasks = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _addTask(String title, String description) {
    if (title.isNotEmpty && description.isNotEmpty) {
      setState(() {
        _tasks.add({'title': title, 'description': description});
      });
      _titleController.clear();
      _descriptionController.clear();
    }
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _copyTaskToClipboard(String title, String description) {
    final taskText = 'Titre: $title\nDescription: $description';
    Clipboard.setData(ClipboardData(text: taskText));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Tâche copiée dans le presse-papiers')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Titre',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: null, 
                  keyboardType: TextInputType.multiline, 
                  onSubmitted: (value) {
                    _addTask(_titleController.text, _descriptionController.text);
                  },
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => _addTask(
                    _titleController.text,
                    _descriptionController.text,
                  ),
                  child: const Text('Ajouter une tâche'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return Slidable(
                  key: ValueKey(_tasks[index]),
                  startActionPane: ActionPane( 
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) => _removeTask(index),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        flex: 1,
                      ),
                      SlidableAction(
                        onPressed: (context) => _copyTaskToClipboard(
                          _tasks[index]['title']!,
                          _tasks[index]['description']!,
                        ),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        icon: Icons.copy,
                        flex: 1,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '${_tasks[index]['title']!}\n',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: _tasks[index]['description']!,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}