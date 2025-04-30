import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bienvenue sur Flutter !",
              style: StyleUtil.getMainTextStyle(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/task');
              },
              child: const Text("Go to Task"),
            ),
          ],
        ),
      ),
    );
  }
}
