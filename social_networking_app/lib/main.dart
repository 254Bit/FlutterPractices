import 'package:flutter/material.dart';
import 'package:social_networking_app/services/auth/login_or_register.dart';
import 'package:social_networking_app/components/my_drawer.dart';
import 'package:social_networking_app/pages/home_page.dart';
import 'package:social_networking_app/themes/light_mode.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightmode
    );
  }
}
