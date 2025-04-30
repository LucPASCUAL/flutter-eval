import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/domain/models/Task.dart';
import 'package:todo/presentation/widgets/task_widget.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({ super.key });

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  final titleTextController = TextEditingController();
  final descriptionTextController = TextEditingController();

  @override
  void dispose() {
    titleTextController.dispose();
    descriptionTextController.dispose();
    super.dispose();
  }

  final List<Task> tasks = [
    Task(
      title: "Task 1",
      description: "Description of Task 1",
    ),
    Task(
      title: "Task 2",
      description: "Description of Task 2",
    ),
  ];


  void _addTask() {
    setState(() {
      tasks.add(Task(
        title: titleTextController.text,
        description: descriptionTextController.text.isNotEmpty ?
          descriptionTextController.text  : "Aucune description",
      ));
    });
  }


  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList de fou"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xF1F1F1F1),
                      ),
                      margin: EdgeInsets.all(4.0),
                      child: TaskWidget(
                          task: tasks[index],
                          index: index,
                          onDelete: _deleteTask
                      )
                  );
                }
            ),
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  controller: titleTextController,
                  decoration: InputDecoration(
                    labelText: 'Title',
                  ),
                ),
                TextFormField(
                  controller: descriptionTextController,
                  decoration: InputDecoration(
                    labelText: 'Description',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _addTask();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('Créer la tâche'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}