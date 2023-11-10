import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
            child:ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                 color: Colors.blue,
                              ),
                child: UserAccountsDrawerHeader(
                   accountName: Text('Scholar'),
                   accountEmail: Text('scholar@gmail.com'),
                   currentAccountPictureSize: Size.square(50),
                   currentAccountPicture: CircleAvatar(
                       backgroundColor: Color.fromARGB(255, 165, 255, 137),
                       child: Text('Me')),
                 ),

              ),
              ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Student Dashboard'),
            // onTap: () {
            // Navigator.pop(context);
            // },
            ),
             ListTile(
            leading: Icon(Icons.money),
            title: Text('School Fees'),
            // onTap: () {
            // Navigator.pop(context);
            // },
            ),

            ]
            
               ),
             
         ),
      ),
    );
  }
}
