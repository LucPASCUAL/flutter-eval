import 'package:flutter/material.dart';
import 'package:todo/presentation/customButton.dart';
import 'package:todo/presentation/screens/home_screen.dart';
import 'package:todo/presentation/screens/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/todo": (context) => const TodoScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'ESN.81 évaluation Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 82, 238, 95),
                  ),
                ),
                Text(
                  "World!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 82, 238, 95),
                  ),
                ),
                Custombutton(),
                const SizedBox(height: 20),
                //FormButton(),
                //Image(image: AssetImage("./assets/images/flutter-home.png")),
                /*Image.asset(
                  "assets/images/flutter-home.png",
                  width: 400,
                ),*/
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
