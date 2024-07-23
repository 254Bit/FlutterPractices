import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
   void Function(bool?)? onChanged;

  ToDoTile({
    required this.taskName,
    required this.taskComplete,
    required void Function(bool?)? onChanged,
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            // Check Box
            Checkbox(value:taskComplete, onChanged: onChanged),

            // Task Name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
