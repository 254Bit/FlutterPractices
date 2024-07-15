import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ClassResults extends StatefulWidget {
  const ClassResults({super.key});

  @override
  State<ClassResults> createState() => _ClassResultsState();
}

class _ClassResultsState extends State<ClassResults> {
  late List<ClassData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Class Performance'),
      legend: const Legend(
          isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
      series: <CircularSeries>[
        DoughnutSeries<ClassData, String>(
          dataSource: _chartData,
          xValueMapper: (ClassData data, _) => data.subject,
          yValueMapper: (ClassData data, _) => data.score,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          enableTooltip: true,
        )
      ],
    );
  }

  List<ClassData> getChartData() {
    final List<ClassData> chartData = [
      ClassData('English', 80),
      ClassData('Math', 90),
      ClassData('Kiswahili', 70),
      ClassData('Chemistry', 60),
    ];
    return chartData;
  }
}

class ClassData {
  final String subject;
  final int score;

  ClassData(
    this.subject,
    this.score,
  );
}
