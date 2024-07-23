import 'package:flutter/material.dart';
import 'package:to_do_application/utilities/my_buttons.dart';

class DialogueBox extends StatelessWidget {
  dynamic controller;
  VoidCallback onSaved;
  VoidCallback onCancel;

  DialogueBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // Get User Input
           TextField(
            controller: controller ,
            decoration: const InputDecoration(
              border:OutlineInputBorder(),
              hintText: 'Add a New Task',
            ),
          ),
          // Buttons -> Save + Cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            //Save Button
            MyButton(
              text: 'Save', 
              onPressed: onSaved),
              const SizedBox(width: 12,),

            // Cancel Button
             MyButton(
              text: 'Cancel', 
              onPressed: onCancel)

          ],)
        ],)
      ),

    );
  }
}