import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/fees.dart';
import 'package:parent_teacher_feedback_app/local_notifications.dart';
import 'package:parent_teacher_feedback_app/school_clubs.dart';
import 'package:parent_teacher_feedback_app/screens/login.dart';
import 'package:parent_teacher_feedback_app/student_dashboard.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Exam Results'),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StudentDashboard()));
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.money),
            title: const Text('School Fees'),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MySchoolFeesSection()));
              });
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.calendar_month),
          //   title: const Text('School Calender'),
          //   onTap: () {
          //     setState(() {
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => const MySchoolFeesSection()));
          //     });
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Extra-Curricular'),
            onTap: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MySchoolClubs()));
              });
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.cast_for_education),
          //   title: const Text('KCSE Results'),
          //   onTap: () {
          //     setState(() {7
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => const MyNotifications()));
          //     });
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Log Out'),
            onTap: () {
              setState(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const LogIn()));
              });
            },
          ),
        ],
      ),
    ));
  }
}


 // child:ListView(
            // padding: const EdgeInsets.all(0),
            // children: const [
              // DrawerHeader(
              //   decoration: BoxDecoration(
              //    color: Colors.blue,
              //                 ),
              //   child: UserAccountsDrawerHeader(
              //      accountName: Text('Scholar'),
              //      accountEmail: Text('scholar@gmail.com'),
              //      currentAccountPictureSize: Size.square(50),
              //      currentAccountPicture: CircleAvatar(
              //          backgroundColor: Color.fromARGB(255, 165, 255, 137),
              //          child: Text('Me')),
              //    ),

              // ),
            

            // ]
            
            //    ),