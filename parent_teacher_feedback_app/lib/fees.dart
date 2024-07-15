import 'package:flutter/material.dart';
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class MySchoolFeesSection extends StatefulWidget {
  const MySchoolFeesSection({super.key});

  @override
  State<MySchoolFeesSection> createState() => _MySchoolFeesSectionState();
}

class _MySchoolFeesSectionState extends State<MySchoolFeesSection> {
  late Future<List<FeesNotify>> feesFuture = fetchFeeNotifications();

  Future<List<FeesNotify>> fetchFeeNotifications() async {
    var url = Uri.parse('http://127.0.0.1:8000/api/read-All-Fees-Notification');
    final response = await http.get(url);
    final List body = json.decode(response.body);
    return body.map((e) => FeesNotify.fromJson(e)).toList();
  }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<List<FeesNotify>>(
          future: feesFuture,
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              final fees = snapshot.data!;
              return buildFees(fees);
            } else {
              return const Text('No Data Available');
            }
          })),
    ));
  }

   Widget buildFees(List<FeesNotify> fees) {
    return ListView.builder(
      itemCount: fees.length,
      itemBuilder: ((context, index) {
        final schoolFees = fees[index];
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
                        Text(schoolFees.studentName,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(schoolFees.notify,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black,
                  )),
                        Text(schoolFees.pdf,
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

class FeesNotify {
  late String studentName;
  late String notify;
  late String pdf;

  FeesNotify(
    //required this.id,
    this.studentName,
    this.notify,
    this.pdf,
  );
  FeesNotify.fromJson(Map<String, dynamic> json) {
    studentName = json['studentName'];
    notify = json['notify'];
    pdf = json['pdf'];
  }
}
