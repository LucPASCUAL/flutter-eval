import 'package:flutter/material.dart';

class Task {
  final String id;
  final String name;
  final String description;
  final IconData icon;

  Task(
      {required this.id,
      required this.name,
      this.description = "",
      this.icon = Icons.task_alt});

  Task.withoutId({
    required this.name,
    this.description = '',
    this.icon = Icons.task_alt,
  }) : id = ''; //On laisse temporairement vide

  Task.fromJson(
      String documentId,
      Map<String, dynamic>
          json) //Initialisation des champs avant l'exécution du corps du constructeur
      : id = documentId,
        name = json['name'],
        description = json['description'] ?? '',
        icon = _iconFromJson(
          json['icon'] ?? 58950, //Le codePoint decimal de task_alt
          json['icon-family'] ?? 'MaterialIcons',
        );

  static IconData _iconFromJson(int codePoint, String iconFamily) {
    try {
      return IconData(codePoint, fontFamily: iconFamily);
    } catch (exception) {
      print('Unable to create the iconData: ${exception.toString()}');
      return Icons.task_alt;
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'icon': icon.codePoint,
      'icon-family': icon.fontFamily
    };
  }

  @override
  String toString() {
    return '{ "id": "$id", "name": "$name", "description": "$description", "icon": ${icon.codePoint}, "icon-family": "${icon.fontFamily}" }';
  }

  Task copyWith({String? name, String? description, IconData? icon}) {
    //crée une nouvelle instance qui ressemble à l'objet d'origine mais avec des changements spécifiques
    return Task(
        id: id,
        name: name ?? this.name,
        description: description ?? this.description,
        icon: icon ?? this.icon);
  }
}
