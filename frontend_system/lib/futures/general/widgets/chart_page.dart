import 'dart:math';

import 'package:flutter/material.dart';
import 'package:frontend_system/core/constants/SalesData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  final List<LineSeries<SalesData, String>> series;

  const ChartPage({super.key, required this.series});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Initialize the chart widget
        SfCartesianChart(
          primaryXAxis: CategoryAxis(
            // 设置x轴为中文标签
            labelPlacement: LabelPlacement.betweenTicks,
            // 中文标签示例
            majorGridLines: MajorGridLines(width: 0),
            axisLabelFormatter: (AxisLabelRenderDetails details) {
              return ChartAxisLabel(
                details.text,
                TextStyle(fontSize: 12, fontFamily: 'Arial'),
              );
            },
          ),
          primaryYAxis: NumericAxis(
            axisLine: AxisLine(width: 0),
            majorTickLines: MajorTickLines(color: Colors.transparent),
            majorGridLines: MajorGridLines(
              width: 0.5,
              color: Colors.grey.shade300,
            ),
          ),
          // Enable legend
          legend: Legend(
            isVisible: true,
            position: LegendPosition.bottom,
            overflowMode: LegendItemOverflowMode.wrap,
          ),
          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: widget.series,
        ),
      ],
    );
  }
}
