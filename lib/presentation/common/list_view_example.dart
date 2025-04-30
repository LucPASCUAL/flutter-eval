import 'package:flutter/material.dart';
import 'package:todo/data/todo.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListViewExample extends StatefulWidget {
  final List<Todo> todo;

  const ListViewExample({
    super.key,
    required this.todo,
  });

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  final _formKey = GlobalKey<FormState>();
  final _titreController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _titreController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void AjouterTache() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        widget.todo.add(Todo(
          titre: _titreController.text,
          description: _descriptionController.text,
        ));
        _titreController.clear();
        _descriptionController.clear();
      });
    }
  }

  void SupprimerTache(int index) {
    setState(() {
      widget.todo.removeAt(index);
    });
  }

  String? validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre ${fieldName.toLowerCase()}.';
    }
    return null;
  }

  // Fonction pour simuler l'action de ne rien faire
  void doNothing(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Liste des tâches")),
      body: SingleChildScrollView(  // Utilisation de SingleChildScrollView pour un défilement fluide
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Formulaire pour ajouter une tâche
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titreController,
                    decoration: const InputDecoration(labelText: "Titre"),
                    validator: (value) => validateField(value, "Titre"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(labelText: "Description"),
                    validator: (value) => validateField(value, "Description"),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: AjouterTache,  // Appel de la fonction d'ajout
                    child: const Text('Ajouter la tâche'),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            // Affichage de la liste des tâches avec Slidable
            ListView.builder(
              shrinkWrap: true,  // Permet à ListView de ne pas prendre toute la place
              physics: NeverScrollableScrollPhysics(),  // Empêche la ListView de défiler indépendamment
              itemCount: widget.todo.length,
              itemBuilder: (context, index) {
                final tache = widget.todo[index];

                return Slidable(
                  key: ValueKey(index),

                  // Le panneau d'action de gauche
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),

                    dismissible: DismissiblePane(onDismissed: () {}),
                    children: [
                      SlidableAction(
                        onPressed: (context) => SupprimerTache(index),
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                      SlidableAction(
                        onPressed: (context) => doNothing(context),
                        backgroundColor: const Color(0xFF21B7CA),
                        foregroundColor: Colors.white,
                        icon: Icons.share,
                        label: 'Share',
                      ),
                    ],
                  ),

                  // Le panneau d'action de droite
                  endActionPane: const ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        flex: 2,
                        onPressed: null,
                        backgroundColor: Color(0xFF7BC043),
                        foregroundColor: Colors.white,
                        icon: Icons.archive,
                        label: 'Archive',
                      ),
                      SlidableAction(
                        onPressed: null,
                        backgroundColor: Color(0xFF0392CF),
                        foregroundColor: Colors.white,
                        icon: Icons.save,
                        label: 'Save',
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(tache.titre),
                    subtitle: Text(tache.description),
                  ),

                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
