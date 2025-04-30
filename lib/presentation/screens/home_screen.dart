import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //ajout d'une appBar avec un titre et une couleur de fond
    return Scaffold(
      body: Center(
        child: Text(
          "Bienvenue sur Flutter !",
          style: StyleUtil.getMainTextStyle(),
        ),
      ),
    );
  }
}
