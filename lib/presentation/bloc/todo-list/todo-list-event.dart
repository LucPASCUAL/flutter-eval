import 'package:todo/domain/models/task.dart';

abstract class TodoListEvent {}

class StartListeningTaskEvent extends TodoListEvent {
  //récupère les tâches à effectuer
  final String collectionPath;
  StartListeningTaskEvent(this.collectionPath);
}

class TaskListUpdatedEvent extends TodoListEvent {
  final List<Task> updatedTasks;
  TaskListUpdatedEvent(this.updatedTasks);
}

class AddTaskEvent extends TodoListEvent {
  final String collectionPath;
  final Task newTask;
  AddTaskEvent(this.collectionPath, this.newTask);
}

class RemoveTaskEvent extends TodoListEvent {
  final String collectionPath;
  final Task taskToRemove;
  RemoveTaskEvent(this.collectionPath, this.taskToRemove);
}
