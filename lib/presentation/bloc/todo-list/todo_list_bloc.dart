import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/data/firebase/firestore_service.dart';
import 'package:todo/domain/models/task.dart';
import 'package:todo/presentation/bloc/todo-list/todo-list-event.dart';
import 'package:todo/presentation/bloc/todo-list/todo_list_state.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  StreamSubscription? _taskSubscription;

  TodoListBloc() : super(TodoListInitial()) {
    on<StartListeningTaskEvent>((event, emit) {
      _onStartListening(event, emit);
    });

    on<TaskListUpdatedEvent>((event, emit) {
      emit(TodoListDisplaySuccess(event.updatedTasks));
    });

    on<AddTaskEvent>((event, emit) {
      _onAddTask(event, emit);
    });

    on<RemoveTaskEvent>((event, emit) {
      _onRemoveTask(event, emit);
    });
  }

  void _onStartListening(
      StartListeningTaskEvent event, Emitter<TodoListState> emit) async {
    emit(TodoListLoading());
    _taskSubscription?.cancel(); // Annule l'ancienne écoute si déjà activee
    _taskSubscription =
        FirestoreService.streamAllDocuments(event.collectionPath).listen(
            (List<Task> tasks) {
      add(TaskListUpdatedEvent(tasks));
    }, onError: (error) {
      emit(TodoListDisplayFailed(error.toString()));
    });
  }

  void _onAddTask(AddTaskEvent event, Emitter<TodoListState> emit) async {
    try {
      await FirestoreService.addDocument(event.collectionPath, event.newTask);
    } catch (e) {
      emit(TodoListDisplayFailed(e.toString()));
    }
  }

  void _onRemoveTask(RemoveTaskEvent event, Emitter<TodoListState> emit) async {
    try {
      await FirestoreService.deleteDocument(
          event.collectionPath, event.taskToRemove.id);
    } catch (e) {
      emit(TodoListDisplayFailed(e.toString()));
    }
  }

  @override
  Future<void> close() {
    _taskSubscription?.cancel(); // Nettoyage
    return super.close();
  }
}
