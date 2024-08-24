// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TaskButton extends StatelessWidget {
  TaskButton({super.key, required this.text, required this.onPressed});

  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
