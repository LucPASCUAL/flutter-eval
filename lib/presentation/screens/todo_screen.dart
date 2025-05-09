import 'package:flutter/material.dart';
import 'package:todo/presentation/widgets/todo/todo_list.dart';
import 'package:todo/presentation/widgets/todo/todo_list_form.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({required this.firestoreCollectionPath, super.key});
  final String firestoreCollectionPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ma TODO liste'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: SingleChildScrollView(
          child: Column(children: [
            TodoList(
              firestoreCollectionPath: firestoreCollectionPath,
            ),
            SizedBox(
              height: 8.0,
            ),
            TodoListForm(
              firestoreCollectionPath: firestoreCollectionPath,
            )
          ]),
        ),
      ),
    );
  }
}
