// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/drawer.dart';
import 'package:parent_teacher_feedback_app/screens/bottom_app.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:parent_teacher_feedback_app/events.dart';

class MyTimeline extends StatelessWidget {
  MyTimeline({
    super.key,
  });

  final List<Events> listOfEvents = [
    Events(
        date: '5pm',
        eventName: 'School Meeting',
        description: 'Form 3 and 4 meeting')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Exlesior',
        ),
      ),

      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: listOfEvents.length,
         itemBuilder: (context, i){
          return Stack(
            children: [
               TimelineTile(
              beforeLineStyle: const LineStyle(
                  color: Colors.blue,
                  thickness: 5,
                ),
                afterLineStyle: const LineStyle(
                  color: Colors.grey,
                  thickness: 2,
                ),
                
                alignment: TimelineAlign.start,
                //lineXY: 0.2,
                indicatorStyle: IndicatorStyle(
                    width: 20,
                    color: Colors.blue,
                    iconStyle: IconStyle(
                      iconData: Icons.calendar_month,
                      color: Colors.white,
                    )),
                //startChild: const Text('Start'),
                
                endChild: Column(
                  
                  children: [
                    const SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding:
                            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
                        child: Column(
                          children: [
                            Text(listOfEvents[i].eventName),
                            Text(listOfEvents[i].date),
                            Text(listOfEvents[i].description),
                          ],
                        ),
                        
                      ),
                    ),

                    Expanded(
                      child: Container())
                   ],
                ),
                   ),
                        ],
            
          );
      
         } 
         
         
         ),
      ),

      bottomNavigationBar: const MyBottomApp(),
      //body: ListView(),
    );
  }
}

// class Events {
//   final String date;
//   final String eventName;
//   final String description;

//   Events({
//     required this.date,
//     required this.eventName,
//     required this.description,
//   });

// }
