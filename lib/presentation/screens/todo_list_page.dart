import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';
import '../../domain/models/models.dart';
import '../../widgets/model_form.dart';
import '../../widgets/model_tile.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final List<Model> _models = [];

  void _addTask(Model model) {
    setState(() => _models.add(model));
  }

  void _deleteTask(int index) {
    setState(() => _models.removeAt(index));
  }

  void _copyTask(int index) {
    final original = _models[index];
    final copiedTask = Model(
      title: "${original.title} (copie)",
      description: original.description,
      icon: original.icon,
    );

    setState(() => _models.add(copiedTask));

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Tâche copiée (et collée)!"),
        backgroundColor: StyleUtil.backgroundColorCopied,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todo List')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _models.length,
                itemBuilder: (context, index) => ModelTile(
                  model: _models[index],
                  onDelete: () => _deleteTask(index),
                  onCopy: () => _copyTask(index),
                ),
              ),
            ),
            const Divider(height: 32),
            ModelForm(onAdd: _addTask),
          ],
        ),
      ),
    );
  }
}
