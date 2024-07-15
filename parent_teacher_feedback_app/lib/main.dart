import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/feeStatement.dart';
import 'package:parent_teacher_feedback_app/fees.dart';
import 'package:parent_teacher_feedback_app/splash_screen.dart';
import 'package:parent_teacher_feedback_app/student_dashboard.dart';
import 'package:parent_teacher_feedback_app/timeline.dart';
import 'package:parent_teacher_feedback_app/register.dart';
import 'package:parent_teacher_feedback_app/notifications.dart';
//import 'package:parent_teacher_feedback_app/screens/login.dart';
//import 'package:parent_teacher_feedback_app/screens/authen_login.dart';
//import 'package:parent_teacher_feedback_app/notifications.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tommorow's Future",
      theme: ThemeData(
          ),
      home: const MyNotifications(),
      debugShowCheckedModeBanner: false,
    );
  }
}
