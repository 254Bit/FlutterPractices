import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/club_containers.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
// import 'package:parent_teacher_feedback_app/drawer.dart';
// import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';

class MySchoolClubs extends StatefulWidget {
  const MySchoolClubs({super.key});

  @override
  State<MySchoolClubs> createState() => _MySchoolClubsState();
}

class _MySchoolClubsState extends State<MySchoolClubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 202, 223),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Extra - Curricular Activities',
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
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          MyClubContainers(
            imagePath: 'assets/Join Our Journalism Club Today (1).png',
            myTexts: 'Music Club',
          ),
          SizedBox(height:20),
          MyClubContainers(
            imagePath: 'assets/Join Our Journalism Club Today (2).png',
            myTexts: 'Art and Design',
          ),
          SizedBox(height:20),
          MyClubContainers(
            imagePath: 'assets/Join Our Journalism Club Today.png' ,
            myTexts: 'Journalism Club',
          ),
          SizedBox(height:20),
          MyClubContainers(
            imagePath: 'assets/Plant a Tree, Grow a Future.png' ,
            myTexts: 'Agriculture Club',
          ),
          SizedBox(height:20),
          
        ]
          ),
          
          ),
           
    );
    
  }
}
