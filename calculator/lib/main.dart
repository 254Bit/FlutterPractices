import 'package:calculator/Calculator.dart';
import 'package:calculator/calculator_2.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
//import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: const Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

