import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/landing_page.dart';
import 'package:parent_teacher_feedback_app/school_clubs.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';
//import 'package:parent_teacher_feedback_app/screens/login.dart';
import 'firebase_options.dart';
//import 'package:parent_teacher_feedback_app/screens/authen_login.dart';
//import 'package:parent_teacher_feedback_app/notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tommorow's Future",
      theme: ThemeData(
        primaryColor: const Color( 0xff2F8D46),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
          // useMaterial3: true,
          // colorScheme: ColorScheme.fromSeed(
          //   seedColor: const Color.fromARGB(255, 1, 18, 35),
          // ),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: const MyBottomApp(),
      //drawer: const SideBar(),

      debugShowCheckedModeBanner: false,
      //color: Color.fromARGB(255, 2, 52, 28),
    );
  }
}
