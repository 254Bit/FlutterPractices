import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  final controller;
  final String hintTexts;
  final bool obscureText;
  final String labelText;
 // final IconData prefixIcon;

  const MyTextFields({
    super.key,
    required this.controller,
    required this.hintTexts,
    required this.obscureText,
    required this.labelText,
    //required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
      ),
      child: TextField(
        //padding: EdgeInsets.symmetric(horizontal: 5),
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
        //prefixIcon: Icon(Icons.prefixIcon),
          hintText: hintTexts,
          labelText: labelText,
          hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
