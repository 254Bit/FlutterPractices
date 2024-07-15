import 'package:flutter/material.dart';

class MySearchArea extends StatefulWidget {
  const MySearchArea({super.key});

  @override
  State<MySearchArea> createState() => _MySearchAreaState();
}

class _MySearchAreaState extends State<MySearchArea> {
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
        body: Center(
      child: Text('Search'),
    )); 
  
  }
}