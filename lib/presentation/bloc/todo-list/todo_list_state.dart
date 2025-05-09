import 'package:todo/domain/models/task.dart';

abstract class TodoListState {}

class TodoListInitial extends TodoListState {}

class TodoListLoading extends TodoListState {}

class TodoListDisplaySuccess extends TodoListState {
  final List<Task> tasks;
  TodoListDisplaySuccess(this.tasks);
}

class TodoListDisplayFailed extends TodoListState {
  final String error;
  TodoListDisplayFailed(this.error);
}
