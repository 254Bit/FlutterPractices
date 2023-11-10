import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/club_containers.dart';

class MySchoolClubs extends StatefulWidget {
  const MySchoolClubs({super.key});

  @override
  State<MySchoolClubs> createState() => _MySchoolClubsState();
}

class _MySchoolClubsState extends State<MySchoolClubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Exlcesior',
        ),
      ),
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
            imagePath: 'Me' ,
            myTexts: 'Art and Design',
          ),
          SizedBox(height:20),
          MyClubContainers(
            imagePath: 'Me' ,
            myTexts: 'Art and Design',
          ),
          SizedBox(height:20),
          MyClubContainers(
            imagePath: 'Me' ,
            myTexts: 'Art and Design',
          ),
          SizedBox(height:20),
        ]
          ),
          ),
    );
  }
}
