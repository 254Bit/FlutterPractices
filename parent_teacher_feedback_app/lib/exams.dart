import 'package:flutter/material.dart';
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class MyExamsSections extends StatefulWidget {
  const MyExamsSections({super.key});

  @override
  State<MyExamsSections> createState() => _MyExamsSectionsState();
}

class _MyExamsSectionsState extends State<MyExamsSections> {
  late Future<List<ExamsNotify>> examsFuture = fetchExamsNotifications();

  Future<List<ExamsNotify>> fetchExamsNotifications() async {
    var url = Uri.parse('http://127.0.0.1:8000/api/read-All-Exams-Notification');
    final response = await http.get(url);
    final List body = json.decode(response.body);
    return body.map((e) => ExamsNotify.fromJson(e)).toList();
  }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<List<ExamsNotify>>(
          future: examsFuture,
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final exams = snapshot.data!;
              return buildExams(exams);
            } else {
              return const Text('No Data Available');
            }
          })),
    ));
  }

   Widget buildExams(List<ExamsNotify> fees) {
    var exams;
    return ListView.builder(
      itemCount: exams.length,
      itemBuilder: ((context, index) {
      final schoolExams = exams[index];
        return SingleChildScrollView(
          child: Container(
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
                  child: SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(schoolExams.studentName,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(schoolExams.notify,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black,
                  )),
                        Text(schoolExams.pdf,
                        style: const TextStyle(fontSize: 12, letterSpacing: 2.0, color: Colors.black)),
                      ],
                    ),
                  )
        
          ),
        );


      }
    )
    );
  }
}

class ExamsNotify {
  late String studentName;
  late String notify;
  late String pdf;

  ExamsNotify(
    //required this.id,
    this.studentName,
    this.notify,
    this.pdf,
  );
  ExamsNotify.fromJson(Map<String, dynamic> json) {
    studentName = json['studentName'];
    notify = json['notify'];
    pdf = json['pdf'];
  }
}
