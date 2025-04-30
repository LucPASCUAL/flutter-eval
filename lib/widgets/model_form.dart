import 'package:flutter/material.dart';
import 'package:todo/util/style_util.dart';
import '../domain/models/models.dart';

class ModelForm extends StatefulWidget {
  final Function(Model) onAdd;

  const ModelForm({super.key, required this.onAdd});

  @override
  State<ModelForm> createState() => _ModelFormState();
}

class _ModelFormState extends State<ModelForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  IconData _selectedIcon = Icons.work;

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final newModel = Model(
        title: _titleController.text,
        description: _descController.text,
        icon: _selectedIcon,
      );
      widget.onAdd(newModel);
      _titleController.clear();
      _descController.clear();
      setState(() => _selectedIcon = Icons.work);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Champ obligatoire'),
          backgroundColor: StyleUtil.backgroundColorMess,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _titleController,
            maxLength: 20,
            decoration: const InputDecoration(
              labelText: 'Nom',
              border: OutlineInputBorder(),
            ),
            validator: (value) => value == null || value.trim().isEmpty
                ? 'Ce champ est requis'
                : null,
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _descController,
            maxLength: 30,
            decoration: const InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          DropdownButton<IconData>(
            value: _selectedIcon,
            onChanged: (icon) => setState(() => _selectedIcon = icon!),
            items: const [
              DropdownMenuItem(value: Icons.work, child: Icon(Icons.work)),
              DropdownMenuItem(
                  value: Icons.shopping_cart, child: Icon(Icons.shopping_cart)),
              DropdownMenuItem(value: Icons.sports, child: Icon(Icons.sports)),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _submit,
            child: const Text('Ajouter une tâche'),
          ),
        ],
      ),
    );
  }
}
