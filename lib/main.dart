import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/firebase_options.dart';
import 'package:todo/presentation/bloc/todo-list/todo-list-event.dart';
import 'package:todo/presentation/bloc/todo-list/todo_list_bloc.dart';
import 'package:todo/presentation/screens/home_screen.dart';
import 'package:todo/presentation/screens/todo_screen.dart';
import 'package:todo/util/firebase/firestore_util.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //s'assure que toutes les ressources du moteur Flutter soient bien chargées
  if (!Platform.isWindows) {
    _initializeFirebaseConfig();
  }
  runApp(const MyApp());
}

void _initializeFirebaseConfig() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
  /* Firestore met en cache les données lues, permettant de lire et écrire des données
   même sans connexion Internet */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => TodoListBloc()
            ..add(
              StartListeningTaskEvent(
                FirestoreUtil.buildTodosCollectionPath('luc-pascual'),
              ),
            ),
        )
      ],
      child: MaterialApp(
        routes: {
          '/todo': (context) => TodoScreen(
                firestoreCollectionPath:
                    FirestoreUtil.buildTodosCollectionPath('luc-pascual'),
              )
        },
        debugShowCheckedModeBanner: false,
        title: 'ESN.81 évaluation Flutter',
        home: HomeScreen(),
      ),
    );
  }
}
