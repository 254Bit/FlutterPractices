import 'package:flutter/material.dart';
import 'package:to_do_application/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: const HomePage(),
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
