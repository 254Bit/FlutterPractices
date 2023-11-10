import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Exlcesior',
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomApp(),
    );
  }
}