import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ECGChart extends StatelessWidget {
  final List<FlSpot> ecgData;

  ECGChart({required this.ecgData});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: ecgData,
            isCurved: true,
            color: Colors.black,

            barWidth: 0.5,
            curveSmoothness: 5,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.red.withOpacity(0.3),
            ),
          ),
        ],
        titlesData: FlTitlesData(
          show: false,
        ),
        gridData: FlGridData(show: true),
      ),
    );
  }
}
