import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<String> fruits = ['Pomme', 'Banane', 'Orange', 'Mangue', 'Ananas'];

  ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        return Container(
          height: 70,
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(12.0)),
          margin: EdgeInsets.all(4.0),
          child: ListTile(
            leading: Icon(Icons.food_bank),
            title: Text(fruits[index]),
            subtitle: Text(
              'Ceci est une description',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        );
      },
    );
  }
}
