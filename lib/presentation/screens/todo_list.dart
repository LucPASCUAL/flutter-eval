import 'package:flutter/material.dart';
import 'package:todo/domain/models/todo_class.dart';
import 'package:todo/presentation/common/custom_textformfield';
import 'package:todo/presentation/common/list_view.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<TodoClass> _tasks = [];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  void ajoutTask() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _tasks.add(TodoClass(
          name: _nameController.text,
          description: _descriptionController.text,
        ));

        _nameController.clear();
        _descriptionController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
        leading: BackButton(),
        backgroundColor: Colors.purple[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: _tasks.isEmpty
                  ? Center(
                      child: Text("Aucune Tâche pour le moment"),
                    )
                  : ListViewEval(
                      items: _tasks,
                      onDelete: (index) {
                        setState(() {
                          _tasks.removeAt(index);
                        });
                      },
                    ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TaskFormFields(
                    nameController: _nameController,
                    descriptionController: _descriptionController,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: ajoutTask,
                    child: Text("Ajouter une tâche"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
