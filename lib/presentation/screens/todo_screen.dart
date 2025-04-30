import 'package:flutter/material.dart';
import 'package:todo/presentation/common/list_view_example.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "Liste",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListViewExample(),
    );
  }
}
