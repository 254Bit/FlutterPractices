import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/screens/login.dart';
import 'package:parent_teacher_feedback_app/landing_page.dart';

class AuthenticatePage extends StatelessWidget {
  const AuthenticatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is logged in
        if (snapshot.hasData) {
          return const MyHomePage();
        }
        // User is not logged in
        else {
          return const LogIn();
        }
      },
    ));
  }
}
