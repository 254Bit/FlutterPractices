import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
   
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LogIn(),
      ));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned.fill(
                child: Image.asset(
              'assets/Proud to be a Black Student.png',
              fit: BoxFit.fill,
            )),
            // const SizedBox(
            //   height: 10,
            // ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
