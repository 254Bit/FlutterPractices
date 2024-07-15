import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
import 'package:parent_teacher_feedback_app/exams.dart';
import 'package:parent_teacher_feedback_app/fees.dart';
import 'package:parent_teacher_feedback_app/school_events.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';

class MyNotifications extends StatelessWidget { 
  const MyNotifications({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
    return DefaultTabController(
      initialIndex: 1,
      length:3,
      child: Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 3, 5, 29),
          bottom: const TabBar(
            isScrollable: true,
            tabs:[
             Tab(child: Text('Exams')),
             Tab(child: Text('Fees')),
             Tab(child: Text('School Events')),
  
            ],  

             ),
              title: const Text(
          'Notifications',
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
        body: const TabBarView(children: [
        
              MyExamsSections(),
              MySchoolFeesSection(),
              SchoolEvents(),

        ],),
        bottomNavigationBar: const MyBottomApp(),
      ), 
      
    ); 
  } 
}