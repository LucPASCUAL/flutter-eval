import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    required this.controller,
    required this.label,
    this.hintText,
    this.onValidateField,
    this.obscureText = false,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final String? hintText;
  final String? Function(String?)? onValidateField;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText ?? 'Entrez $label',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      validator: onValidateField,
    );
  }
}
