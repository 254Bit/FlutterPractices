import 'package:flutter/material.dart';

class ColumnPost extends StatelessWidget {
  final String message;
  final String user;
  // final String time;

  const ColumnPost({
    super.key,
    required this.message,
    required this.user,
    // required this.time,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Profile Pic
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey, 
          ),
          padding: const EdgeInsets.all(10),
          child: const Icon(
            Icons.person,
            color: Colors.white
          )
        ),
        const SizedBox(width:20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(user,
            style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(message)
          ],
        ),
      ],
    );
  }
}
