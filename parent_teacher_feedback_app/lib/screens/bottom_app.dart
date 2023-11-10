import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:parent_teacher_feedback_app/notifications.dart';
import 'package:parent_teacher_feedback_app/landing_page.dart';

class MyBottomApp extends StatefulWidget {
  const MyBottomApp({super.key});

  @override
  State<MyBottomApp> createState() => _MyBottomAppState();
}

class _MyBottomAppState extends State<MyBottomApp> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const MyHomePage(),
    const MyNotifications(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
       bottomNavigationBar:        
       Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(  
              backgroundColor: Colors.black,
              activeColor: Colors.white,
              color: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 15,
              padding: const EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: _navigateBottomBar,
                ),
                const GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                    icon: Icons.notification_add,
                    text: 'Notifications',
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyNotifications()));
                      });
                    }),
              ]),
        ),
      ),
      // child:Container(
      //     height: 70,
      //     decoration: const BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(20),
      //         topRight: Radius.circular(20),
      //       ),
      //       //
      //     ),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(
      //           enableFeedback: false,
      //           onPressed: () {
      //             Navigator.of(context).push(MaterialPageRoute(
      //                 builder: (context) => const MyHomePage()));
      //             setState(() {
      //               pageIndex = 0;
      //             });
      //           },
      //           icon: pageIndex == 0
      //               ? const Icon(
      //                   Icons.home_outlined,
      //                   color: Colors.white,
      //                   size: 35,
      //                 )
      //               : const Icon(
      //                   Icons.home_outlined,
      //                   color: Colors.white,
      //                   size: 35,
      //                 ),
      //         ),
      //         IconButton(
      //           enableFeedback: false,
      //           onPressed: () {
      //             Navigator.of(context).push(MaterialPageRoute(
      //                 builder: (context) => const MyNotifications()));
      //             setState(() {
      //               pageIndex = 1;
      //             });
      //           },
      //           icon: pageIndex == 1
      //               ? const Icon(
      //                   Icons.notification_add_sharp,
      //                   color: Colors.white,
      //                   size: 35,
      //                 )
      //               : const Icon(
      //                   Icons.notification_add,
      //                   color: Colors.white,
      //                   size: 35,
      //                 ),
      //         ),
      //       ],
      //     )),
    );
  }
}
