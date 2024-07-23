import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Text('Make Tutorial'),
      decoration: BoxDecoration(color: Colors.yellow,
      borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}