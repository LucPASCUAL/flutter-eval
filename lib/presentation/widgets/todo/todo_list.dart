import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/domain/models/task.dart';
import 'package:todo/presentation/bloc/todo-list/todo-list-event.dart';
import 'package:todo/presentation/bloc/todo-list/todo_list_bloc.dart';
import 'package:todo/presentation/bloc/todo-list/todo_list_state.dart';
import 'package:todo/util/style/style_util.dart';

class TodoList extends StatelessWidget {
  const TodoList({required this.firestoreCollectionPath, super.key});
  final String firestoreCollectionPath;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListBloc, TodoListState>(
      builder: (context, state) {
        return _buildTodoListWithState(state, context);
      },
    );
  }

  void _onDelete(BuildContext context, Task taskToRemove) {
    context.read<TodoListBloc>().add(
          RemoveTaskEvent(
            firestoreCollectionPath,
            taskToRemove,
          ),
        );
  }

  Widget _buildTodoListWithState(TodoListState state, BuildContext context) {
    if (state is TodoListLoading) {
      return CircularProgressIndicator();
    } else if (state is TodoListDisplayFailed) {
      return Text(state.error, style: StyleUtil.getErrorTextStyle());
    } else if (state is TodoListDisplaySuccess) {
      return state.tasks.isEmpty
          ? Text("Vous n'avez aucune tâche à effectuer")
          : ListView.separated(
              shrinkWrap:
                  true, //Prend juste la place nécessaire pour ses éléments
              physics:
                  NeverScrollableScrollPhysics(), //Évite le scroll imbriqué
              itemCount: state.tasks.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 2.0);
              },
              itemBuilder: (context, index) {
                final task = state.tasks[index];
                return Slidable(
                  key: const ValueKey(0),
                  startActionPane:
                      ActionPane(motion: const StretchMotion(), children: [
                    SlidableAction(
                      onPressed: (_) => _onDelete(context, task),
                      backgroundColor: Colors.red,
                      foregroundColor: Color(StyleUtil.OFF_WHITE),
                      icon: Icons.delete,
                      label: 'Supprimer',
                    )
                  ]),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child: ListTile(
                      key: ValueKey(task.id),
                      leading: Icon(
                        task.icon,
                        size: 35.0,
                        color: Color(StyleUtil.OFF_WHITE),
                      ),
                      title: Text(
                        task.name,
                        style: StyleUtil.getListTileTitleStyle(),
                      ),
                      subtitle: Text(
                        task.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: StyleUtil.getListTileDescriptionStyle(),
                      ),
                    ),
                  ),
                );
              },
            );
    }
    return SizedBox(); //Je ne retourne rien du tout dans le cas contraire
  }
}
