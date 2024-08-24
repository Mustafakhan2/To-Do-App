// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:to_do_list/util/task_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      this.controller,
      required this.onCancel,
      required this.onSave});
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(),
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'What to do?',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TaskButton(
                    text: 'Save',
                    onPressed: onSave,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  TaskButton(
                    text: 'Cancel',
                    onPressed: onCancel,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
