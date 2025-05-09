import 'package:flutter/material.dart';
import 'package:todo/presentation/common/button/custom_elevated_button.dart';
import 'package:todo/util/style/style_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flutter-home.png'),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              'Bienvenue sur ma \nTODO liste !',
              textAlign: TextAlign.center,
              style: StyleUtil.getMainTextStyle(),
            ),
            SizedBox(
              height: 14.0,
            ),
            CustomElevatedButton(
              label: 'Go !',
              path: '/todo',
            ),
          ],
        ),
      ),
    );
  }
}
