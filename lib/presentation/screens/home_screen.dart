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
              "Application Todo List",
              style: StyleUtil.getMainTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
