import 'package:flutter/material.dart';

class DropDownIcon extends StatelessWidget {
  const DropDownIcon(
      {required this.availableIcons,
      required this.selectedIcon,
      required this.onChangeIcon,
      super.key});
  final List<IconData> availableIcons;
  final IconData selectedIcon;
  final ValueChanged<IconData> onChangeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.48,
      child: DropdownButton<IconData>(
        menuMaxHeight: MediaQuery.of(context).size.height * 0.65,
        value: selectedIcon,
        items: availableIcons.map((IconData icon) {
          return DropdownMenuItem<IconData>(
            value: icon,
            child: Center(
              child: Icon(icon),
            ),
          );
        }).toList(),
        onChanged: (IconData? newIcon) {
          if (newIcon != null) {
            onChangeIcon(
                newIcon); //On met à jour l'icône de sélection dans le widget parent
          }
        },
      ),
    );
  }
}
