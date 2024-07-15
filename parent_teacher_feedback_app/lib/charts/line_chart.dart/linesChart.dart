// import 'package:flutter/material.dart';
// import 'package:parent_teacher_feedback_app/charts/grade_points.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class ExamChart extends StatefulWidget {
//   final dynamic grades;
//   final dynamic subject;

//   ExamChart({
//     super.key,
//     required this.grades,
//     required this.subject,
//     // required this._gradeChart,
//     // required this._tooltipBehavior,
//   });

//   @override
//   State<ExamChart> createState() => _ExamChartState();
// }

// class _ExamChartState extends State<ExamChart> {
//   List<ExamChart>? _midTermData;
//   List<ExamChart>? _endTermData;
//   TooltipBehavior? _tooltipBehavior;
//   @override
//   void initState() {
//     _midTermData = midTermData;
//     _endTermData = endTermData;
//     _tooltipBehavior = TooltipBehavior(enable: true);
//     super.initState();
//   }

//   List<ExamChart> data = [
//     ExamChart(grades: 80, subject: 'Math'),
//     ExamChart(grades: 78, subject: 'Eng'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(series: <ColumnSeries<ExamChart, dynamic>>[
//       ColumnSeries<ExamChart, dynamic>(
//           dataSource: midTermData,
//           xValueMapper: (ExamChart data, _) => data.grades,
//           yValueMapper: (ExamChart data, _) => data.subject,
//           name: 'Mid Term'),
//       ColumnSeries<ExamChart, dynamic>(
//           dataSource: endTermData,
//           xValueMapper: (ExamChart data, _) => data.grades,
//           yValueMapper: (ExamChart data, _) => data.subject,
//           name: 'End Term')
//     ]);
//   }

//   // A function that will return a list of the grades of each object
//   List<GradeMarks> midTermData() {
//     final List<GradeMarks> midChartData = [];
//     GradeMarks(grades:80, subject:'English');
//     GradeMarks(grades: 90, subject:'Maths');
//     GradeMarks(grades:88, subject:'Kiswahili');
//     GradeMarks(grades: 70, subject: 'Biology');
//     GradeMarks(grades: 85, subject: 'Chemistry');
//     GradeMarks(grades: 78, subject: 'Geography');
//     return midChartData;
//   }

//   List<GradeMarks> endTermData() {
//     final List<GradeMarks> endChartData = [];
//      GradeMarks(grades:77, subject:'English');
//     GradeMarks(grades: 80, subject:'Maths');
//     GradeMarks(grades:82, subject:'Kiswahili');
//     GradeMarks(grades: 69, subject: 'Biology');
//     GradeMarks(grades: 70, subject: 'Chemistry');
//     GradeMarks(grades: 73, subject: 'Geography');
//     return endChartData;
//   }
// }
