import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ESN.81 Evaluation Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bienvenue sur Flutter !",
              style: StyleUtil.getMainTextStyle(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tasks');
              },
              child: const Text("Go voir les Tasks"),
            ),
          ],
        ),
      ),
    );
  }
}