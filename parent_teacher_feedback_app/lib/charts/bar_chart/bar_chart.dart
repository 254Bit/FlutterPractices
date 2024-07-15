import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StudentResults extends StatefulWidget {
  const StudentResults({super.key});

  @override
  State<StudentResults> createState() => _StudentResultsState();
}

class _StudentResultsState extends State<StudentResults> {
  late List<StudentData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'Olivia Results'),
      legend: const Legend(
          isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
      tooltipBehavior: _tooltipBehavior,
      series: <ChartSeries>[
        BarSeries<StudentData, String>(
          name: 'Grade',
          dataSource: _chartData,
          xValueMapper: (StudentData results, _) => results.subject,
          yValueMapper: (StudentData results, _) => results.score,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          enableTooltip: true,
        ),
      ],
      primaryXAxis: CategoryAxis(),
      primaryYAxis: NumericAxis(
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        title: AxisTitle(text: 'Mid Term Results'),
      ),
    );
  }

  List<StudentData> getChartData() {
    final List<StudentData> chartData = [
      StudentData('English', 80),
      StudentData('Math', 90),
      StudentData('Kiswahili', 70),
      StudentData('Chemistry', 60),
    ];
    // final List<StudentData> endTermResults = [
    //   StudentData('English', 77),
    //   StudentData('Math', 67),
    //   StudentData('Kiswahili', 59),
    //   StudentData('Chemistry', 65),
    // ];
    return chartData;
  }
}

class StudentData {
  final String subject;
  final double score;

  StudentData(
    this.subject,
    this.score,
  );
}
