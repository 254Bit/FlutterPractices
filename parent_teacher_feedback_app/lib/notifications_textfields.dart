import 'package:flutter/material.dart';

class MyNotificationsTextFields extends StatelessWidget {
  final dynamic dateController;
  final String hintTexts;
  final String date;
  final String eventHeading;

  const MyNotificationsTextFields({
    super.key,
    required this.dateController,
    required this.hintTexts,
    required this.date,
    required this.eventHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: TextField(
        controller: dateController,
        decoration: InputDecoration(
          //prefixIcon: Icon(Icons.people),
          hintText: hintTexts,
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
