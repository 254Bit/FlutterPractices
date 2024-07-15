import 'package:flutter/material.dart';

class SchoolEvents extends StatefulWidget {
  const SchoolEvents({super.key});

  @override
  State<SchoolEvents> createState() => _SchoolEventsState();
}

class _SchoolEventsState extends State<SchoolEvents> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Center(
        child: Text('Meetings'),
      ));
  }
}
