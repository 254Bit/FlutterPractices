import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/charts/bar_chart/bar_chart.dart';
import 'package:parent_teacher_feedback_app/charts/pie_chart/pieChart.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  List<dynamic> examResults = [20, 30, 40];

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
          'Student Results',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue.shade200,
                  child: const Text('Olivia'),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade200,
                    radius: 80,
                    child: const Text('Student'),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    child: RichText(
                      text: const TextSpan(
                          text: 'Olivia A.O \n',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'Form 3 East \n',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: '4K Club \n',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black38),
                            ),
                            TextSpan(
                              text: 'Twiga Dormitories\n',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black38),
                            ),
                            TextSpan(
                              text: 'School President\n',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black38),
                            ),
                            TextSpan(
                              text: 'Download transcript\n',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blue,
                              ),
                              // icon:Icon(Icons.picture_as_pdf_outlined)
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
      
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              
              child: const SizedBox(
                height: 200,
                child: StudentResults(),
              )
            ),
            //BarCharts(),
            Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              
              child: const SizedBox(
                height: 200,
                child: ClassResults(),
              )
            ),
      
           const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              
              child: const SizedBox(
                height: 200,
                child: TextField(),
              )
            ),
            
          ],
        ),
      ),

      //const MyTimeline(),

      bottomNavigationBar: const MyBottomApp(),
    );
  }
}
