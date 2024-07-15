import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:parent_teacher_feedback_app/notifications.dart';
import 'package:parent_teacher_feedback_app/landing_page.dart';
import 'package:parent_teacher_feedback_app/search.dart';

class MyBottomApp extends StatefulWidget {
  const MyBottomApp({super.key});

  @override
  State<MyBottomApp> createState() => _MyBottomAppState();
}

class _MyBottomAppState extends State<MyBottomApp> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
          color: const Color.fromARGB(255, 3, 5, 29),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: GNav(
              backgroundColor: const Color.fromARGB(255, 3, 5, 29),
              activeColor: Colors.white,
              color: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 15,
              padding: const EdgeInsets.all(26),
                tabs: [
            GButton(
                icon: Icons.home,
                //text: 'Home',
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyHomePage()));
                  });
                }),
            GButton(
              icon: Icons.search,
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MySearchArea()));
                });
              },
              //text: 'Search',
            ),
            GButton(
                icon: Icons.notification_add,
                //text: 'Notifications',
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyNotifications()));
                  });
                }),
                ],
              ),
          ),
        ),

        );
  }
}
