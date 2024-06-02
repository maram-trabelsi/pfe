import 'package:fl_chart/fl_chart.dart';
import 'package:myapp/pie_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PieChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    PieChart(PieChartData

    (centerSpaceRadius: 0,
      sectionsSpace: 0,
      sections:getSectionData(MediaQuery.of(context).size.width))
     
    );
  }
}