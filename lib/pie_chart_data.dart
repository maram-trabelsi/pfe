import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
List<PieChartSectionData> getSectionData(double screenWidth){
  double radius = screenWidth / 4;



 return [
  PieChartSectionData(
                  value: 30,
                  title: 'Chauffage',
                   radius: radius,
                  color: Color.fromARGB(255, 23, 128, 2),
                ),
                PieChartSectionData(
                  value: 20,
                  title: 'Appareils',
                   radius: radius,
                  color: Color.fromARGB(255, 99, 219, 245),
                ),
                PieChartSectionData(
                  value: 20,
                  title: 'Éclairage',
                   radius: radius,
                  color: const Color.fromARGB(255, 14, 188, 19),
                ),
                PieChartSectionData(
                 
                  value: 30,
                  title: 'Climatisation',
                   radius: radius,
                  color: Color.fromARGB(255, 62, 125, 243),
                 
                ),
];
}