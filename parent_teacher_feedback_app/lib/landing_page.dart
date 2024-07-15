import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';
import 'package:parent_teacher_feedback_app/school_timelines.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Exlesior',
        ),
        actions: [
          Padding(padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Text('Olivia'),
              ),
              Positioned(
                right: 0, top: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                )
                )
            ],
          ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const MyTimelines(), 
        
      //const MyTimeline(),

      bottomNavigationBar: const MyBottomApp(),
      //body: ListView(),
    );
  }
}
