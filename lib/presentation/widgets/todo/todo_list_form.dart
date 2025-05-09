import 'package:flutter/material.dart';
import 'package:todo/data/firebase/firestore_service.dart';
import 'package:todo/domain/models/task.dart';
import 'package:todo/presentation/common/list/dropdown/dropdown_icon.dart';
import 'package:todo/presentation/common/textfield/custom_textformfield.dart';
import 'package:todo/presentation/common/tooltip_custom.dart';
import 'package:todo/util/notification.dart';
import 'package:todo/util/style/style_util.dart';

class TodoListForm extends StatefulWidget {
  const TodoListForm({required this.firestoreCollectionPath, super.key});
  final String firestoreCollectionPath;

  @override
  State<TodoListForm> createState() => _TodoListFormState();
}

class _TodoListFormState extends State<TodoListForm> {
  final TextEditingController _taskNameController = TextEditingController();
  final TextEditingController _taskDescriptionController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late IconData _selectedIcon;
  final List<IconData> _availableIcons = [
    //Liste des icônes disponibles lors de la création d'une nouvelle tâche
    Icons.task_alt,
    Icons.work,
    Icons.shopping_cart,
    Icons.fitness_center,
    Icons.book,
    Icons.music_note,
    Icons.movie,
    Icons.home,
    Icons.event,
    Icons.sports_soccer_sharp,
    Icons.paragliding_outlined
  ];

  @override
  void initState() {
    super.initState();
    _selectedIcon = _availableIcons.first;
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    _taskDescriptionController.dispose();
    super.dispose();
  }

  String? _onValidateField(String? value) {
    if (value == null || value.isEmpty) {
      return 'Ce champ est obligatoire';
    }
    return null;
  }

  void onChangeIcon(IconData newIcon) {
    setState(() {
      _selectedIcon = newIcon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              controller: _taskNameController,
              label: 'Nom',
              hintText: 'Le nom de vôtre tâche',
              onValidateField: _onValidateField,
            ),
            const SizedBox(
              height: 14.0,
            ),
            CustomTextFormField(
              controller: _taskDescriptionController,
              label: 'Description',
              hintText: 'La description de vôtre tâche',
            ),
            const SizedBox(
              height: 18.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ToolTipCustom(
                text: "Choix de l'icône",
                message:
                    "Ce choix optionnel vous permet de définir l’icône qui sera associée à votre tâche.",
              ),
            ),
            Divider(
              height: 0.0,
              thickness: 2.0,
            ),
            const SizedBox(
              height: 12.0,
            ),
            DropDownIcon(
              availableIcons: _availableIcons,
              selectedIcon: _selectedIcon,
              onChangeIcon: onChangeIcon,
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  final String taskName = _taskNameController.text;
                  final String taskDescription =
                      _taskDescriptionController.text;
                  final Task newTaskToAdd = Task.withoutId(
                      name: taskName,
                      description: taskDescription,
                      icon: _selectedIcon);
                  try {
                    FirestoreService.addDocument(
                        widget.firestoreCollectionPath, newTaskToAdd);
                  } catch (exception) {
                    NotificationUtil.showErrorMessage(
                        context,
                        "Une erreur est survenue, veuillez faire remonter le message d'erreur suivant à votre administrateur"
                        ":\n${exception.toString()}");
                  }
                }
              },
              child: Text(
                'Ajouter',
                style: StyleUtil.getButtonLabelStyle(),
              ),
            )
          ],
        ),
      )),
    );
  }
}
