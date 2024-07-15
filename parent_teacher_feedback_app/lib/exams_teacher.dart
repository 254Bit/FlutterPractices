import 'package:flutter/material.dart';

class TeacherExamSection extends StatefulWidget {
  TeacherExamSection({super.key});

  final dateController = TextEditingController();
  final messageController = TextEditingController();

  @override
  State<TeacherExamSection> createState() => _TeacherExamSectionState();
}

class _TeacherExamSectionState extends State<TeacherExamSection> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${selectedDate.toLocal()}".split('')[0]),
            const SizedBox(height:20.0),
            ElevatedButton(onPressed: ()=> _selectedDate(context),
            child: const Text('Select Date'),
            )


          ],
        )
      ),
         
      
      //Text()
      
      
      
    );
  }
}
