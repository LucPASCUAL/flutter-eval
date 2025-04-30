import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/util/style_util.dart';
import '../domain/models/models.dart';

class ModelTile extends StatelessWidget {
  final Model model;
  final VoidCallback onDelete;
  final VoidCallback onCopy;

  const ModelTile({
    super.key,
    required this.model,
    required this.onDelete,
    required this.onCopy,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(model.title),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => onDelete(),
            backgroundColor: StyleUtil.backgroundColorDelete,
            icon: Icons.delete,
            label: 'Supprimer',
          ),
          SlidableAction(
            onPressed: (_) => onCopy(),
            backgroundColor: StyleUtil.backgroundColorCopy,
            icon: Icons.copy,
            label: 'Copier',
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(model.icon),
        title: Text(model.title),
        subtitle: Text(model.description),
      ),
    );
  }
}
