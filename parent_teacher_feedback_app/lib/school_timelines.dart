import 'dart:convert' show json;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:parent_teacher_feedback_app/entities/timeline.dart';

class MyTimelines extends StatefulWidget {
  const MyTimelines({super.key});

  @override
  State<MyTimelines> createState() => _MyTimelinesState();
}

class _MyTimelinesState extends State<MyTimelines> {
  late Future<List<Timeline>> timelinesFuture = fetchTimelines();

  Future<List<Timeline>> fetchTimelines() async {
    var url = Uri.parse('http://127.0.0.1:8000/api/read-All-Timelines');
    final response = await http.get(url);
    final List body = json.decode(response.body);
    return body.map((e) => Timeline.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<List<Timeline>>(
          future: timelinesFuture,
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final timelines = snapshot.data!;
              return buildTimelines(timelines);
            } else {
              return const Text('No Data Available');
            }
          })),
    ));
  }

  Widget buildTimelines(List<Timeline> timelines) {
    return ListView.builder(
      itemCount: timelines.length,
      itemBuilder: ((context, index) {
        final timeline = timelines[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(timeline.eventName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Text(timeline.eventDate,
                style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black,
                )),
                Text(timeline.eventBrief,
                style: const TextStyle(fontSize: 12, letterSpacing: 2.0, color: Colors.black)),
              ],),
          ),
        );
      }
      ),
    );
  }}

  