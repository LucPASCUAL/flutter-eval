import 'package:flutter/material.dart';
import 'package:todo/presentation/common/custom_button.dart';
import 'package:todo/util/style_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Bienvenue sur Flutter !",
              style: StyleUtil.getMainTextStyle(),
            ),
            CustomElevatedButton(text: "To do List", route: "/todo")
          ],
        ),
      ),
    );
  }
}
