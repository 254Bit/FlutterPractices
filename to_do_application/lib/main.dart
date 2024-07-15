import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MaterialApp(),
    );
  }
}


//users
//tasks
//cloud firestore->db
//auth->firebase auth

//initialize firebase inside the main.dart
//main.dart->entry point of the program
//collections->(tasks,users)
