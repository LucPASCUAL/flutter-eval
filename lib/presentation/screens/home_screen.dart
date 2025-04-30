import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';
import 'todo_list_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ESN81 évaluation Flutter",
              style: StyleUtil.getMainTextStyle(),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.model_alt),
              label: const Text("Accéder à la Todo List"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TodoListPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
