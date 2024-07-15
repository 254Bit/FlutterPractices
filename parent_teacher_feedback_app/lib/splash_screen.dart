import 'package:flutter/material.dart';
// import 'package:parent_teacher_feedback_app/landing_page.dart';
import 'package:parent_teacher_feedback_app/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
   
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const LogIn(),
      ));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Image.asset(
              'assets/Proud to be a Black Student.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
