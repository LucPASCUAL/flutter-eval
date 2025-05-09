import 'package:flutter/material.dart';
import 'package:todo/util/style/style_util.dart';

class ToolTipCustom extends StatelessWidget {
  const ToolTipCustom({required this.text, required this.message, super.key});
  final String text;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: StyleUtil.getMediumTextStyle(),
        ),
        IconButton(
          icon: Icon(
            Icons.info_outline,
            color: Colors.blue,
            size: 25.0,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text('Information'),
                content: Text(
                  message,
                  textAlign: TextAlign.justify,
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: Text('Fermer'),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
